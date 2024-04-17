Return-Path: <blinux-list+bncBDYPVTOXSQEBBTES7WYAMGQEJTB233Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC0E8A7B30
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 06:00:14 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5aa26b7b674sf5163940eaf.3
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 21:00:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713326413; cv=pass;
        d=google.com; s=arc-20160816;
        b=yyqvQeHQJjO8z9XZPF1fdgpJByoQBxEsj2cM7/twX47yksgh+ro05okJUYkAeMTEJr
         vIQY1EacNoEQCHV2S++/xzTecX8KNOnp4xy9RiXfeY1MYDsi7tHlmcn1Dgd5pzSpfB9r
         26egAsYUkNH+jXLEGZRT6A2Gu20QaD+Iw8fbmXuOWN+ubatvfaEQ1T4bqftZ65SK3Q2w
         r1kEAIjtpGbX8ZjZTv2F20cJU/QO9svMDDs83aM0MxvbTw8W3wDX7cs0Jy65XrxwC4+T
         VJlEJlrZRmFKmabDGUufIcBgj8N6b/EcFRS5N4GeVIMBnhpiSUHmHUavH8X+SziBuwIR
         uzbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=XSo8k8tK+GvqezUzfVdtillEmCErQwuH8nNztIX0r70=;
        fh=xGdjhwFWG7YH0w5ogsJeUWGw081x1kgQpUzarQtGHIk=;
        b=b34yUoifEUUUgqVvY6gPVbmw0ns4cCuXaujc7VkXcbSMI+jrb2RXOTNc+EIzZHTWBY
         hAK6TFygic68tvWhD6c5inYJL+Fj2NCLAW1frBo/nn9xZ/lrdpSyqf2crZVFeAei4b7k
         /MaKbUr33X84O5f32Q6VaSCsNh0rTqI4D/1pbIW4h7PJUtxMdXfNJCfxTgOXI3KlyuRG
         NFfgAhd+h+xCBZI7hCwGDIu1ZxyDELwpqy/Awa2wnJGd9nk04MnEXEQwZaVgxLqU65bE
         YDPxljgPleVP+O2ldb0CeBiPNEvYI5ZWPNuHplB5DUP5ct5tMnxm7lZgzXhSFN+/Af/5
         t3Hw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713326413; x=1713931213;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XSo8k8tK+GvqezUzfVdtillEmCErQwuH8nNztIX0r70=;
        b=eFeMsCkSQl8OsslN0CsfC93sMpTiM6N7EcXnyJUsLmi48DPr+E6LV8lDSKjbCXsDw1
         RE1hNsJhBBle35REQbuJGl0d7eU4T8uZUSUqZmOevWzKy6KdP4GfaC1UcuOAPxhXDKMO
         xO3cDeqrVFvMAMdRq/FKGmsCUBzQhbVHpkp6ZjDO77E061m+m287T0NIclxM48T+QR+Q
         WZHTY322IYwzwRr1a7Oe7G0ZiIbB+f1w2GqTQdjaozOe7JDbMYxHw+nk6JOSlabs4Uk7
         pMkq8EHEOnY4gFhdWwSUH//9jJCD4zA+gTXVzyT42DRFekub2Zt+UkzHMzz4THyhuJof
         DFzA==
X-Forwarded-Encrypted: i=2; AJvYcCX7rMrxehw25TovSznBSbZMXO0utY6+OH2lUx7vEOI7ub3O05eIml3+NcdBZQS2Zj5cbEueSeuDFZv5D/FI+gGxJZTJ6L5gq1Kr
X-Gm-Message-State: AOJu0Yy6H0tAtHjT3aPg9iZRFH2eA0iccthz4xpY6np0IFbBdev9lZCv
	lnbUqpO49HKzoNdMWu/K9QeWfYtGNMKPoYO1OJkD/QgwmPxFNF5oumxWfSBBHQE=
X-Google-Smtp-Source: AGHT+IEekXUbm8EMixCyRspE3jegHg7ZZsQayd3ArGtB+ddADczbgxsjBAyVO61ZlBCZSKPSZX/idg==
X-Received: by 2002:a05:6820:1ac2:b0:5ac:5c3c:6aca with SMTP id bu2-20020a0568201ac200b005ac5c3c6acamr15401738oob.0.1713326412749;
        Tue, 16 Apr 2024 21:00:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:8c11:0:b0:5aa:44f9:9b15 with SMTP id u17-20020a4a8c11000000b005aa44f99b15ls4074763ooj.1.-pod-prod-03-us;
 Tue, 16 Apr 2024 21:00:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW7NTOc52S574OY6DfkmnDiW7gXvGa/2ZBgClWhzmgaT9Lx7HhSuTTKCX0ZSibW5j5HcRTKMFBqhyS2R9w3bE8zPu5t3MvfDQIVErA0
X-Received: by 2002:a4a:5105:0:b0:5ac:bdbe:9cc8 with SMTP id s5-20020a4a5105000000b005acbdbe9cc8mr5758569ooa.4.1713326411676;
        Tue, 16 Apr 2024 21:00:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713326411; cv=none;
        d=google.com; s=arc-20160816;
        b=MYVpepC4Z2TcvmKDWDLg+cCpRGhA9SXkPGJ0blFRp0655VHky83H6Q1emdduqpGhcN
         5zQHfkazt9NgfAOhKWz3jT59bKF2Sp72GALmlupWjGdhYLVpcUnqjWHGFVUtoEeCJLvG
         SRBpp6RqUuv7e7rNfSTP4h7F6mBETlsbqCNUpI8zC2TOVmF5nPGES3wp91TZ+kElykSR
         YrKagiDG8ay5GOg44u4c8jRHIegsdf536CJa7AQRFtZDj/RaulKdg669B/MQgB51CSZv
         ghJFzypCCjhz6oshBKBFwqAdJlPD4tcaL3jp4LrSC/Sxv03qTxNxs6OCV7n8HN+AWGse
         AgTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=P9xG+ZKoxVKIaCT+Rhdp0so3sRa6GXo0cZ3ub3wpzqg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=fvjdb6DkW3O/UutGSzxji4PrbuRCtCxTCy+JEEtokOMckVLT2dMzOONfdq38Oha2Bw
         St7yrvb7jB/JI56xNAZAV0ak6HOnYZkywQjdGK4y+6T5I2+SLz7kX19s2Hk8eddG2ukq
         4A1zjwLPcpsxbJlV6lFtfPTwwvW1HJuVgDf1Un7GzNHy5YVR2RitXHzLE+FyijXd+ScS
         ZbaYFyMDT7fu6HN0NZTkKHp8Ldjr4cIKCJtSgLZ4/6b84Lq92nl1aaiGvda7y8COoSqm
         qFlJzons/4t+U4kz1Ma4wa8o/08YcVkwZ+d8juTEXzHv7zXNhD8cRVwG0/r+TIeCn3C0
         p+lA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id y7-20020a05622a164700b00432e2bc7f64si13857726qtj.331.2024.04.16.21.00.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 21:00:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-443-etJfGUkEOLGxc0EzScH90Q-1; Wed, 17 Apr 2024 00:00:10 -0400
X-MC-Unique: etJfGUkEOLGxc0EzScH90Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C767488CE8D
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 04:00:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C41562166B34; Wed, 17 Apr 2024 04:00:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B8742166B32
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 04:00:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E9F03C0C48B
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 04:00:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-468-bfHj6iMqMJWYWyS76_a9cw-1; Wed,
 17 Apr 2024 00:00:04 -0400
X-MC-Unique: bfHj6iMqMJWYWyS76_a9cw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VK6cS63gbzRN7
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 23:59:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VK6cS5sjyzcbc; Tue, 16 Apr 2024 23:59:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VK6cS5pjWzcbC
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 23:59:52 -0400 (EDT)
Date: Tue, 16 Apr 2024 23:59:52 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: change timezone
Message-ID: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 1
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

Have you tried in terminal sudo tzselect yet?


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

