Return-Path: <blinux-list+bncBDYPVTOXSQEBBJWA7WYAMGQEPRQAV6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C72C8A7BE9
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 07:37:44 +0200 (CEST)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-dc693399655sf9645204276.1
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 22:37:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713332263; cv=pass;
        d=google.com; s=arc-20160816;
        b=HefRh4bmhQ+76NfDjQfeY51MwWW7kYUIyuqzpLvur4L/9RVFFYDORAiVq5FD5g/2t8
         Pqyl0xknqNsY39rBnM45KTAiWCmXQWkglH72uBJH4NP7qm2Ohjew5axsTOXcSuL9qX5I
         2SN7MSyhad0x3mqLs15CN+MQAjJGLfXfxM7H9onHqwlGpKeFBwzmPmMjhDqIWrHLwPhd
         orkoF1PJNo25f+9J9QKrPVtIrTxOr5CjoyLc6GoYIw+OEkMbIb7tUlus4eSVwEirZCHP
         mRsOQ0lpSrQbGb7KuyqZ5pDKaWEGSOcsygMpw6bmbyzXhZUS9XA8M0inWBcKp6snDFH5
         971g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=20rjtpvVTmrTqxbF04Ly2Z0Ey42IoazBQTcI0BBaNP0=;
        fh=CFZ6ItDKtJm/1/reRV9ZyywAPzNvuUYCYidZRDui4B4=;
        b=YFHNjRuMh7aQD7GMeBCPvM1+PsK9WIllz3ecDZWlwxmJsgzElGaQVjqpV38J4uJMjZ
         srBJ9L4CjC1mLNN6InAIOEP4HCY/VFYyEZ8UP3KAEj22gck1R9df+w6VBnZL0G+0uyRK
         mOnbNNQuiagoiB82S6GRS2KyMUvh8c75FOOr/Q0DoJBax6EMT5xkYZUtM+WIm1TJ/V4A
         B90iei/Q1kJef+3oDkI9pL+zh/eW5+gjDfF8/kkm2CfErYrC+qppv2Okfw1nYT49X49C
         xDz9WfCHCTc9lciiHG3t30ypkBpI54moMBTcSwmnYbBo1ts8jwaMrz3mpma5WZpyVhWB
         2Qjw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713332263; x=1713937063;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20rjtpvVTmrTqxbF04Ly2Z0Ey42IoazBQTcI0BBaNP0=;
        b=IfSUPBLNs9wDd+VOCgWzrMoBj7/M8J4qILAN26r6GLFNarXBP4xFCdn3VpqYEZY+G2
         l1hfT2sGax0hp3Nm+Nm8H1nKqGB1VQs9IZI7QDfVQ8CakyqlLZH/EJUxJSUnIeGGQ/0s
         MyRmnIzNj46BFnoKRBFhmgCPiDa1e6jaip+QYHfZRMpqp8HEavTcoheMaBHbkhCcL+Ms
         NI2CnGbGSPD/pNd/91Xv3nlcCMrAinx4WcjqQeCsf4qvS8jYMKsed/cjFK8IOeGQBWrI
         YqYKrdppOgHwZ7JQlqFznM06ukuCkDuYmXQ4stc2jDzNBuJMQw0X/qasxiV8DMn8x8Jb
         X/pA==
X-Forwarded-Encrypted: i=2; AJvYcCViXtDfgVuhFcB9BCsy8UMjiC4UynuTyUV8yTYTwr0JBx0znQa102qED9Vnm9Sr47h6/crGic5/FG5fPcHVQNIIkCppIdkEUiV7
X-Gm-Message-State: AOJu0YxCHp4/UgPAIKSOk6HIPlNxrQ+VbCrBlxGADfs9hHumK9bp+cz3
	dh0wOq5nXJDf+ynJWqczAZPA6WP5K3Fj3s0UbCmB8EVx8Wxv+PD/ubqx+6Te6yg=
X-Google-Smtp-Source: AGHT+IElhF9Lnc9Tia056dI9V9eRWESFw38ElSC4jurxUJPFlns8nC4aBa1FQnsucGp9/uxdSKwskg==
X-Received: by 2002:a25:6905:0:b0:dcd:b034:b504 with SMTP id e5-20020a256905000000b00dcdb034b504mr14271201ybc.27.1713332263017;
        Tue, 16 Apr 2024 22:37:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:f28:b0:69b:2455:2edf with SMTP id
 iw8-20020a0562140f2800b0069b24552edfls20072qvb.0.-pod-prod-07-us; Tue, 16 Apr
 2024 22:37:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVS9BTubLMKL13MgpVF6Y5Flr9T7DMXHjuijoTmWhIaXDOC8MfzdpAnhx7sq9XyBa7RDXr4WrqM2JtzW73ooh+RYADmDebbrnE4wuRj
X-Received: by 2002:a67:e709:0:b0:47b:7639:4d0e with SMTP id hw9-20020a67e709000000b0047b76394d0emr11631156vsb.5.1713332262326;
        Tue, 16 Apr 2024 22:37:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713332262; cv=none;
        d=google.com; s=arc-20160816;
        b=EQUbp0lVToFgmLmAVEq5FAiTQXAD505z4AwBqvSNcP4viSO6SG4Bt0H3IVkQBAX8cF
         Pm0iRmPS6g5rGIymcMN/IvNQIzR3v+NVXbSiEZXOFBDYuKOyS2fNNegBb3PJc2I10MhZ
         U19CQQMinBwxfbAfuuye68KhOXpy7pZeOry60pMBePY/wHJCbhCwUhDN9h2TtQwTBTf1
         SkOJAELAz2eEi7oQsr6cIUl6W5pRj3po5JQQVtjtMvvv/0/1x77mvQlQgaau5SiN/mq9
         gEKNbyEB+WlNOIXwW0U6NDg9DJJAPJp13BXof6kGSxm7HTPteCKbvBwmcqJFdSdvzQor
         E4kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=2nyfiWPSChubnaGecB8OAiHtbXrYBu3AuzsPrrDP648=;
        fh=rUUaHSoLGtxLiH5mK3pAKMU/ZcNGAcml4Qe7+FZD3lU=;
        b=UdHNKSjn/LAQa/vqhdj9n7lsYbBeled/u5KMSX/NB5oEfm+yc2z0PJjwgr6tcRZ1jn
         H6iLiNKqr9TFrHn/JTxmZY6rjHWFI9QDBODns7i5ETKVLqaYKb1fQiif4+TslVLoig7J
         /wER02do21Venba7JIow+GbTw54ur2FSVIhREZr+VaXkLI3nd6kWfteoOxvNkmeGnh54
         iCZydMlrUaVNLoL3yYsTbIH5HAdrgLMPudsi8lswy9s9/bOYYIbss6MyKbs5Pf9sImGq
         wO3fFel2VSlRkrzU4KTE//bgqrp0Oe0t9l5DGh/+vMZBE2TWxxk0tqXhn179gzLhpv5T
         OU4g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id w15-20020a05620a094f00b0078ec2fa4ab3si13223981qkw.316.2024.04.16.22.37.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 22:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-362-vDAoSCySMEOUCHscvt7LBA-1; Wed,
 17 Apr 2024 01:37:40 -0400
X-MC-Unique: vDAoSCySMEOUCHscvt7LBA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA5E61C4C394
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 05:37:40 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A6EFF2026962; Wed, 17 Apr 2024 05:37:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E0122026964
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 05:37:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 211181C4C393
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 05:37:40 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-470-Si3F6pa3PKGXnT4huWdj1Q-1; Wed,
 17 Apr 2024 01:37:38 -0400
X-MC-Unique: Si3F6pa3PKGXnT4huWdj1Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VK8n82L02zkCM;
	Wed, 17 Apr 2024 01:37:32 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VK8n822vqzcbc; Wed, 17 Apr 2024 01:37:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VK8n81zfxzcbV;
	Wed, 17 Apr 2024 01:37:32 -0400 (EDT)
Date: Wed, 17 Apr 2024 01:37:32 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Chime Hart <chime@hubert-humphrey.com>
cc: blinux-list@redhat.com
Subject: re: change timezone
In-Reply-To: <Pine.LNX.4.64.2404170126290.1757988@users.shellworld.net>
Message-ID: <338ebe44-738e-82ab-7226-bbafaeb467bd@panix.com>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com> <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com> <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com> <Pine.LNX.4.64.2404170126290.1757988@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

The date command will do that once you know how to use it.  For the skinny
type info date.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 17 Apr 2024, Karen Lewellen wrote:

> Hi chime,
> granted I do not use Linux.
> Still, I simply set the clock on my computer when I travel.
> Surely there is a basic Linux command for that role?
> Karen
>
>
>
> On Tue, 16 Apr 2024, Chime Hart wrote:
>
> > You know, many of our mobil phones ajust time-zones as we travel, but this
> > laptop never ajusts.
> > Chime
> >
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to blinux-list+unsubscribe@redhat.com.
> >
> >
> >
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

