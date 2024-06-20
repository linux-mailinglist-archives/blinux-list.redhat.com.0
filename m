Return-Path: <blinux-list+bncBDYPVTOXSQEBBHP22GZQMGQE2PCGP4Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C369111C2
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jun 2024 21:04:00 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b50430e9c1sf14603416d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 20 Jun 2024 12:04:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718910239; cv=pass;
        d=google.com; s=arc-20160816;
        b=pItKINQDFB62hu4leFAQFo7/bTWT5EujGKl+wkuqLxeY3OMUYhOqWyfUwUvIfQkP6E
         eWfXZnvHg/WVnzWOJjpUplpvYdlP2HyArDktBE52HsXjDu63QcLjH1tiXKe0IXrdBqln
         z0JwQeDXjtMAvrnjtcVHtTQF0TtOiPGZWovFQEHTyFzG+4KuCY/rJT9jCZ3gsXK4d6x8
         mLcPMZ9BEMHDgqsuEGEvrO84pmtcXbScpPybMyaQxCNuSgMaIlsZFobrkCE14NSeeBFQ
         EAeG0F1tTc7cVS1tnPwifSYDq2EcNIjRXHduc6hfFF942wqtELx3WoOez6Mwi1oClj1l
         P/bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=Fxih3bD3ocoQsqenEkVPl1LckxWTHhj8FXEPbDyS5PQ=;
        fh=zLBKdA97o38n4uIUj087RnuAxVZZNa/4kN0/5w75w1Q=;
        b=lsvGbN+6PmH8R6ui8zYK2HZZen1sLmihPXvttsNNmJytZkUAcxrShc3r8hAmtel+lh
         ReFr2sIT6ewdXCwO8HDUHGyoD+LN1XkzXbACtVRVxgHT0AZIfHK7zDJ8bHgWdh2yXw3A
         8ivBCANpNHPMSCPns1vR5FI8DnktBQKl5zeg1pap1prS8F25AgTJiWr6Hp5FeP+rVHdW
         +98wubJ4odZy1SSvZDMbE0eiXmTxsRqovOnuOAFF6B4PcWnNpd4xii5LfbrdX/mlj/RI
         AYHXtYYuSLAZOXXVv2YntPbeZUOe7tPmfVnqIVWz5YjcwPUf6LdSzq6owWA02U0Hvo51
         WcXw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718910239; x=1719515039;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fxih3bD3ocoQsqenEkVPl1LckxWTHhj8FXEPbDyS5PQ=;
        b=ZL054vX8hoaS9vL133qo1WKvULU5RcgvsBCPXeThyqOO/GsXEaEicA1YA7kXoUI+PD
         ZxHnKMMV4S42GLyG1/k4ZM+ZbUTgJfDApNzHpWgZ0lfDt7+1rJL7FKajT9FqZ7pXpv1F
         Tx1j2+HGpnOM8WK2eF5Jf6pfnFf5hwGVgziMCQnpIKbbO05yoZUyPjnTdfsKRq3lkd9V
         sAE3v9jpNpivYDLgsiCSvYr6+QUrULQyDIN1/Ar71yu1+2BOZPymT5YcHh9adMtuNSNG
         Y1ncYbLMLYMqhJ+0HeJ6VusJEYPk7TxXlfMaEVp5wFbeWgshnJ8VBw9YUkFTLKTxloE/
         fWag==
X-Forwarded-Encrypted: i=2; AJvYcCUboavhXzHTMLYrbsTcsKowkRogFzqHiyT3S6iglYv2oOTxjwf+Wc7iA57RgHfIsyla8/TBtX7qt6H6zJDtQ8vnbPEjMfF2icKe
X-Gm-Message-State: AOJu0YxgMHtRmBe6eTcjI/KsUEOhWnhjBPhlLuUMeSJk4oHaWoDYGFYv
	YBFsuJd6vqfr7Ec4IONvlLd7EWKbWkZ0Go5hmF1XC07/lTtqugyq6TwSmowWLeg=
X-Google-Smtp-Source: AGHT+IGBGYqhjPSG1oDA4HMaR9/zcFwjAQr4CRSbBOAWboXUVttZkT9Xck28Z6L+yUItt0Gshif1pA==
X-Received: by 2002:ad4:42b1:0:b0:6b0:7f36:8aeb with SMTP id 6a1803df08f44-6b501ea3472mr64930146d6.45.1718910238362;
        Thu, 20 Jun 2024 12:03:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5546:b0:6b0:78b3:9c4b with SMTP id
 6a1803df08f44-6b50ff5757dls20103896d6.0.-pod-prod-01-us; Thu, 20 Jun 2024
 12:03:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW3NFlZGMs7I7r9SdB1lMOfkn9/F5jNWLTfn0m+tnK5Wkr0+L9TUQmDh96YSSxT0M002FE+oY9oFuP/khv7RJj+w9qXeFgZsTJGMhrI
X-Received: by 2002:a05:6122:2023:b0:4df:1d07:5ffa with SMTP id 71dfb90a1353d-4ef2766f9a2mr7228736e0c.3.1718910237281;
        Thu, 20 Jun 2024 12:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718910237; cv=none;
        d=google.com; s=arc-20160816;
        b=LxQiTx+SnvuqnoOeOE/AbAnlVGH8DOKfcZlbu9jrra1wy27pIwLR1X4aJ31px8Kgy9
         e1PzkWraak2XPC1z2WcIGkpfPypMquGQDaVJinfgrxecqfypvfdG2AdS2FvY3aQRO4lB
         um9MgdDLkVjvIR1ZU2PxpWN3B55JBpXr14TGP1WXM3n/sn+wHaVEuJYRL3Y8o9QBJbrI
         jj6ybCJTvZqQaGf30d5dEe6OnKUUn3AvL8q34YQIdW70i8LRJmFYuRaCB4/xRKOnLFu2
         jycvZTNmvLo78nImVow7eL1h1/xXXHLgy8sQdbrH4DYq7TDhgMsVn0m4NBXudbObhNJb
         2kyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=hTHlLevOup++B4pgAXPBgxtjBXD8m8gr9VnFzMQhFAE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=GyVJhWrEb2KXXqycWensj9FdnlDQ42yx2TzQYnGXbXqlPnTqtjIN1PiAMxk4jqweEU
         dsOPLAx+6sw95uZr0tQKvgPVvOGS7K5VOXULuBrlrMXNvQkp+VxXGjGycRbFZ81hdGMh
         DPWSfzkZfkJTOGd+CfteE3/1302sqBv8dP473nspZGMYUNYzITlfTER4HMnHTMQDvWDl
         VuDwCa9mK52uVAKD7AbqqgC1IISG1D22Us6nJKNP6cD9sTlZt53Bbsa10M0dmOFca6hK
         bCkKaQKnbwRTQHWKs2kQr7B4suKWxl/thxnny9Jq6AuRKvRJjYwLF5IoKr5NdAdPLpLN
         V7Og==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 71dfb90a1353d-4ef46882030si5988e0c.256.2024.06.20.12.03.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 12:03:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-230-OvCqc17yMwCjK-tKfEM84w-1; Thu,
 20 Jun 2024 15:03:55 -0400
X-MC-Unique: OvCqc17yMwCjK-tKfEM84w-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA1AC1954213
	for <blinux-list@gapps.redhat.com>; Thu, 20 Jun 2024 19:03:54 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CA3213000601; Thu, 20 Jun 2024 19:03:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C803D3000218
	for <blinux-list@redhat.com>; Thu, 20 Jun 2024 19:03:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6081B1956096
	for <blinux-list@redhat.com>; Thu, 20 Jun 2024 19:03:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-168-B_xT9pABMHSuQGahocBeZg-1; Thu,
 20 Jun 2024 15:03:52 -0400
X-MC-Unique: B_xT9pABMHSuQGahocBeZg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W4qdz5nM2z11DT
	for <blinux-list@redhat.com>; Thu, 20 Jun 2024 15:03:51 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W4qdz50L0zcbc; Thu, 20 Jun 2024 15:03:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W4qdz4rxTzcbC
	for <blinux-list@redhat.com>; Thu, 20 Jun 2024 15:03:51 -0400 (EDT)
Date: Thu, 20 Jun 2024 15:03:51 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: archinstall rather curious
Message-ID: <7e5e73b2-2755-aa90-a8db-4005c98184cb@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Installing a minimal baseline with no sound servers gets espeak and
espeakup able to speak.  However if I put pipewire or pulseaudio in as
sound servers after first reboot all that comes up is silence. Without the
sound servers a couple seconds after speaker click I hit enter once and
get a talking login.
My extra packages are:
alsa-utils ddgr dhcpcd emacs espeakup irssi lynx man-db man-pages mlocate
texinfo vi


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

