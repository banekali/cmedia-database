DELIMITER $$

CREATE TRIGGER after_subscription_create
AFTER INSERT ON subscriptions
FOR EACH ROW
BEGIN
  INSERT INTO subscriptions_meta (
    subscription_id,
    action,
    new_status,
    changed_by_staff_id,
    change_source,
    reason
  ) VALUES (
    NEW.subscription_id,
    'create',
    NEW.status,
    NULL,
    'system',
    'Subscription created'
  );
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_subscription_status_update
AFTER UPDATE ON subscriptions
FOR EACH ROW
BEGIN
  IF OLD.status <> NEW.status THEN
    INSERT INTO subscriptions_meta (
      subscription_id,
      action,
      old_status,
      new_status,
      changed_by_staff_id,
      change_source,
      reason
    ) VALUES (
      NEW.subscription_id,
      CASE
        WHEN NEW.status = 'suspended' THEN 'suspend'
        WHEN NEW.status = 'cancelled' THEN 'cancel'
        WHEN NEW.status = 'active' THEN 'reactivate'
        ELSE 'update'
      END,
      OLD.status,
      NEW.status,
      NULL,
      'system',
      CONCAT('Status changed from ', OLD.status, ' to ', NEW.status)
    );
  END IF;
END $$

DELIMITER ;
