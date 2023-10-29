Return-Path: <blinux-list+bncBDYPVTOXSQEBB64L7OUQMGQE43NTIFQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6F77DAE53
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 21:52:12 +0100 (CET)
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4083fec2c30sf27937705e9.1
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 13:52:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698612731; cv=pass;
        d=google.com; s=arc-20160816;
        b=mcHF+FLFWqUUQqJTBV3boxjtUBPHCGHe++QA9EQrl092K78XmZknv9mkG/D16hY1uI
         rdsuKGuNhXpioMMCLklipNz5VpDasdCcecVGg9rFKRcEJ9Pk8fd+/1MPPhHnDkNyMMh9
         XpmP0R7d2sZsPsOK86ozcxWHRQveqr6lHRuxkr36gpnobgtGFF0Lt9UXXcT50/Er9GDN
         UGT+AKQkhbjs/c1v52TrW7FNloK1/b3ENpAMYdJuups0YqyKdbOmm/qUqbDuU2WFLwuP
         9mByxvgDCZpZTaHdh+2U9riD4DiZDfqHWGERAb4W/9XqIWW++Sx//eJGQfOb/zcfrEt0
         +fNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=38FTbzA3HA0OwH640ODgR00E4kj4RfXyD14eid1nIz8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=GAOrezXUPQ5SGDXRjUITkq73+ddoy6qJLdC7BgnM2Wnp9WuDohrGBAmsT3fXGRcnRv
         Hz+ZjmPInDYLlbtGQyagmD9VfyoTlXfcTGI0QVdt3E3kR+Q6++pzRtZVyOWO6abm2y3J
         mYzse3KisLmcjM6US0NfSDkQTMPEXWlgsQXZ22xjV/15eoEK4EXZV+YGAQ+4azVAK0nQ
         47F1kfKkfGNkjXeZiLnDNCwdgA28rv/Vjeh5PVITwwhb1TFVOgHynBU60hdTJwnxBxFg
         9xiS/erfwCEj9yIDfCcE/lAsyLRnOMyLLAxC/8Q1kipE1+HMJwym78KfzqPQ1v9REyIZ
         DzJw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698612731; x=1699217531;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=38FTbzA3HA0OwH640ODgR00E4kj4RfXyD14eid1nIz8=;
        b=YGRg2v2nAfQ8G7HFFC7Ko2vV8f5zbte92z9sXtn/8+iMcz9L90e8d9iPw8Je3AHVbd
         9cq10mjaU+BGiTOL2fj+wqmELsZBI8Jw+SYFyrh+7sTbN1Yl766PizF6Oyt9zpRF0u+O
         JQHEjz3FOl1CHpn1djSVnL4YjhNxPYfXsBx8m/equnU4u74RFKvqL0d0Xh4G17O6vRAP
         onQHSxD2oT/JYCjZgB+rvcnN1Jq1hOhaB5eOlXbXn7T/vXJhpapjO7Nm8wo2rp6SEa39
         b1VhlBSA2o05i9gJ0LBRuuxiZZHcbiz4DOb8IE2J/1qhP+jNwqOTHt0QjDvKOBPg0sv+
         OoaQ==
X-Gm-Message-State: AOJu0YzzzDI2ZvhzlWg/tb9htTs+tdqSy01wS3JUN5RC992xenH5SCwl
	40xEBSMTXJrwmdG8s2Sp4/GHqw==
X-Google-Smtp-Source: AGHT+IFmdA3BPz8LSdKDrCFw0K2SiM6r64n3r0Iyl1N6UbaSZqzqdCx/fKwU80D4rsZOlqQFxoU5wg==
X-Received: by 2002:a05:600c:46c8:b0:3ff:233f:2cfb with SMTP id q8-20020a05600c46c800b003ff233f2cfbmr6194931wmo.23.1698612731508;
        Sun, 29 Oct 2023 13:52:11 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:600c:1c01:b0:407:67a8:8d2a with SMTP id
 j1-20020a05600c1c0100b0040767a88d2als1254349wms.0.-pod-prod-01-eu; Sun, 29
 Oct 2023 13:52:10 -0700 (PDT)
X-Received: by 2002:a05:600c:4f53:b0:405:4002:825a with SMTP id m19-20020a05600c4f5300b004054002825amr6645513wmq.13.1698612730051;
        Sun, 29 Oct 2023 13:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698612730; cv=none;
        d=google.com; s=arc-20160816;
        b=KVQj7PZQEeW3+NEovZrZYp7QdVX4NUxpl0swGtUaxxOzrb+749Efu6UV84YMVTfr0E
         P9oIKElIZHE9rnb3lRqwGs2ZVT8I3pOI5lGdrEB8X9oSuJ3RoXToY2GKIWE8EHrtwWTj
         cgTszoJ42fSeTkXEKgfAFWqg5D2o/Ef/+gB1PqEK6iyRWU5vZ4QhBiGNKgwneyXr6Azn
         cEuwPD6WwRAlGC4N8DRYSRxQpjfTOkBON0hYabeOsQ/FevdJTu78ac5EYQWIaf6CD9XM
         V9UW0fyWUSWxfw4L5WB7ALOooA05zLweU5ueNIMVHewvsNCxDebj9aHZ8c6HPrXAgWD6
         ApCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=Rk9jbzMAwAiPvmhay037mE2CaZJ4wLsZLkpyrGV3iFE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=zKkoe0nxuPqnK5Y1xLH6ORqe8mFLtC9Qe/JYb1BRNEbfPCNxW3+l0aJYCyy2aRq1Te
         2OOBKK+NVcqyZbhjE+DzQJnDX50yL8rGJcO+PBzdRW1TSNkS/q7DU4JHh/wdUneFtvMy
         GOXEXH1B2ce38+bDUbMLPxwj96yFN55liGg/6fjD6G30zZnNgGEgU9LV1sO2A8eXSZ5a
         xXzawj0gCudOzL+RgHTnJ8/mWcMxKeP7dQgO4B0zJqBaYQo6002XtKLCFZZ2TYgAuTeV
         sulfFIOT0f9CK5gSHWrHpmu+aGuCi/cu6OLxqjVgx2aXtoB8sBliUCOX62UEWwmslizL
         RrlA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id 15-20020a05600c020f00b00405297e3b15si4463074wmi.128.2023.10.29.13.52.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 13:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-46-PNGO58apMZyCU0TnjnqWqA-1; Sun, 29 Oct 2023 16:52:07 -0400
X-MC-Unique: PNGO58apMZyCU0TnjnqWqA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E6E4101A529
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 20:52:07 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7AE872166B28; Sun, 29 Oct 2023 20:52:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72CF92166B26
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 20:52:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FDF23C025BC
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 20:52:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-247-ff0TlVgVN2uyIVHU0UQNYw-1; Sun,
 29 Oct 2023 16:52:05 -0400
X-MC-Unique: ff0TlVgVN2uyIVHU0UQNYw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SJT9J58c8zkZH
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 16:52:04 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SJT9J4mKnzcbc; Sun, 29 Oct 2023 16:52:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SJT9J4dmGzcbC
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 16:52:04 -0400 (EDT)
Date: Sun, 29 Oct 2023 16:52:04 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: archlinux multimedia difficulties
Message-ID: <346a287a-2c6-71b5-c8e-60f39850c9e7@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
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

I did not install a sound server when I installed this system.
Relatively safer that way.
I installed mpv and chose jack rather than pipewire-jack since pipewire
isn't on this system.
I cannot get jackd to find alsa and get it going properly so could use
some help with a good command line to get the system matched up properly.
There is no jackdmp command on the system or in archlinux repositories so
far as I can find.
I'm doing this to enable podcasts playing mp3 files playing and listening
to youtube.
Archlinux does have a good package for listening to youtube called
pipe-viewer and it's worth installing on other systems like debian that
don't have the package.  A search for pipe-viewer for debian on the web
will bring you to instructions to get that done.
For any interested I'm running a basic system without G.U.I. now.
Not all attempts to install a desktop system have been successful here.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

