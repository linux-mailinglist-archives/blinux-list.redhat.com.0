Return-Path: <blinux-list+bncBCVPTHE7K4IO7SX5WADBUBFRSYMQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F9F8A7C01
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 08:00:17 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-69b7ea6fdb2sf31783846d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 23:00:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713333617; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yy+7gElwaRtCk7Wkx8FNQQa2t+6Or/7279j8QIr10ZNO66XTkGMxs8eEUKQtZo6roN
         ubPpaLTrWVIpPEfgRHcUH9doRVHGNB3Gi0T0tJKPIZz80cAzOfuM8OjA510feYa+b9gI
         11NV0JQViKI7UkFhjb45WIrC/wHmUPrA0QCSyxv5iG6ny40Gu4EuptyadlvKDC1hwrsu
         9aWcZXD2dJy7EUUInDvQtRdFfZG81c2Ud64g52hXsj22VfMPJAW4wm/UUzZy3kl74jLP
         gk1ExBR1zIRSLd1FeKuCjtbpKWvCobzjPXiJjOrgL0wtRX7t7zpnqA/6ebZqEl8ENvQJ
         +x/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=kSaxomkcXvsMvBg2vUllyVSccIdA8Xhu0ETfA+ZfL9Q=;
        fh=ql84GGMKJbpcugoDl0j/2dWOJFHvpfcr6fmeBET48h4=;
        b=clRZUUCqgGhLzzYrCvuaYF4LsBzHrjquPJOXrjKMMNgJtPRjhC9pgh9fM4XOaDC4kU
         FIsdz2Bu3z9ZkkPWqzcZkXyd5WufOi1fuomuekcKJLv1UBqA2NYMk8N1SOykkntev4Sw
         zu0gDnWMXa2AADOSLAuFIJQTowOVoJLMZUVsIVgGMwA9pslXMMDZv55r38xMJadHFLDN
         HxEW2FtyWg9DgR15z0pzTHaYTvmvyovbdUL6AcBupLgdSoT4RtraotBvaWL5oiXAn6CG
         Q5DUApaX73iQcBZVtvd3w52g/sKKP+K0XGx85fJaqsqqFeKUJyPqiuegi16Xtw2XneT/
         iF/w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713333617; x=1713938417;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kSaxomkcXvsMvBg2vUllyVSccIdA8Xhu0ETfA+ZfL9Q=;
        b=Cub51sojGP58m02wkeKnuFF3Zd1jkmemBzJ8a0hpsJyLNMU5hH8hxnoR7sEalJuUef
         vCRrsJSMl4b669D8shinKdxC9GScO/MbELI/7POLY5mReEXUc2oJC6kAwEcepc3Xp+83
         XQCWppZWbx19VIfo0RJYl2lY2jnl5IkI0vCoj9DyuP03go0bNARvqd3vfBRHZuU0q6qf
         dIPVq4NYrAFE3YsldgPTEVoEaKSA4puXbCRsD4SAvkXaEt6AZI38Woaes5bEyc+dAeWK
         28UHgf9BDM1gZxvD6CaSMDgehT3XycOIkSqfueI8HxduOdvm2kTVLnTR4g5TgcjogKQa
         YZwA==
X-Forwarded-Encrypted: i=2; AJvYcCXFHv1MYFIt6IJkHLq3oAXuVQo0d79BuVwk4E+qi+l6UnwvQGat6FlrT6xbTtWH9+pzjnIz/yVwO1rNy+L0aR52/cmp+ilkAOpi
X-Gm-Message-State: AOJu0YwHCiihWUq+6c/vagE9kslATIAx4rL7Zvrn5MxrcRP4rT71rgyx
	+YoisCNt7Q8IUGwEXn3V1bCk621wcXF267VoWYdCtaSANtvAiZvxa3rCokTamUk=
X-Google-Smtp-Source: AGHT+IEQviqw5LXopkrUkOvO4gWUcWuSCp3q1qiIan2I1AGicS1+9V4rPiPVEt1MMHTpy5O6Lahzfg==
X-Received: by 2002:ad4:52c2:0:b0:69b:14a5:c6b1 with SMTP id p2-20020ad452c2000000b0069b14a5c6b1mr15504064qvs.53.1713333615707;
        Tue, 16 Apr 2024 23:00:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5290:b0:699:3f37:49ab with SMTP id
 kj16-20020a056214529000b006993f3749abls6459408qvb.0.-pod-prod-09-us; Tue, 16
 Apr 2024 23:00:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWmSEnWcQ7T2eDHJO/YOudEPfzlubogDYcIfugGhjPO0mQp2p2ZKLGNJDWRbzbZ3xfIWDXscMMhu17LAS1mR8yU1kEDY4p7IwcQ3wS6
X-Received: by 2002:a0c:fe91:0:b0:69b:809b:f374 with SMTP id d17-20020a0cfe91000000b0069b809bf374mr7187920qvs.22.1713333612059;
        Tue, 16 Apr 2024 23:00:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713333612; cv=none;
        d=google.com; s=arc-20160816;
        b=d9wBcawbb4M6zCqbLAIbPiNRGUWa46Gma7rCnlzAjXomBgWCwiOd7nekcMq9p155wI
         KqZpcalcr8QjPoIPv7tLXLusC2Bc6BzaPTYr+POj/NdYg/nESQ1Me0g/7MfeYAxaLN0e
         V2bOMt46jXnOJDArwSt+xwPdINk0x/FhbiIoa4Hp4mcohCiJE3ogHUNc/gvJoUx2t/xN
         868FYpkpIHD3nSbf7KHV8CYXN9ffPSsjYtA70huP0XmGlBl5ZvJBrkBbbwF15SCkrKW3
         qhmYY3hm+7/GvcCqMfugPj1mxz24VB4zpu2rhwPmkGTfhcptySbjjEWCtWDppSbY7+aV
         YCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=kSaxomkcXvsMvBg2vUllyVSccIdA8Xhu0ETfA+ZfL9Q=;
        fh=1+GmWa7xIB+wwNOSRSfMqjyC4H392T3/c6e0Bw0L1m0=;
        b=ZWXExUXYAiGuKh+M0bc4vud/AINjAW9j8ZUposiVdGVvowY++CJ10QmhaAlKo2RaZy
         J/gtNb1RXM1jWygSLXtAe/+dDwhpyX/nreW2ua+h8KCak+FqZs6sJ0r5z9PvOwEdVi4L
         KZSGtNaTMgAwDT50VW01JhZWI7WPLRpke5jXrBazqB5P2pdgrBYR2du0gQxH5vZlNm6a
         8TmhXPrOWzezvsdDqn9oyg7JTpI7bMPUdrGcMp8Es1X8qDLdm4Hxw0zGauTCFTeEZj21
         q7G8pc/h6yiwd2bKfjE/P1MgDcq2DR4atsouFyfV/zT2gkXEvpm0QCbr9eGejt+XwnQS
         hCFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id dn17-20020a056214095100b0069b44767098si13835033qvb.312.2024.04.16.23.00.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 23:00:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-140-tuLYqB2TPpmLgrtfmii_cQ-1; Wed, 17 Apr 2024 02:00:10 -0400
X-MC-Unique: tuLYqB2TPpmLgrtfmii_cQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F2E21887317
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 06:00:10 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2BDDA51EF; Wed, 17 Apr 2024 06:00:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E835F3543A
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 06:00:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F16828B6AAE
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 06:00:09 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-82-wUaDMx2XMnGsOB6EBwx-6w-1; Wed,
 17 Apr 2024 02:00:05 -0400
X-MC-Unique: wUaDMx2XMnGsOB6EBwx-6w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 5FA784050A;
	Wed, 17 Apr 2024 02:00:05 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 24BD01001C2; Wed, 17 Apr 2024 02:00:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 2336F100054;
	Wed, 17 Apr 2024 02:00:05 -0400 (EDT)
Date: Wed, 17 Apr 2024 02:00:05 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Chime Hart <chime@hubert-humphrey.com>, blinux-list@redhat.com
Subject: re: change timezone
In-Reply-To: <338ebe44-738e-82ab-7226-bbafaeb467bd@panix.com>
Message-ID: <Pine.LNX.4.64.2404170154350.1758311@users.shellworld.net>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com>
 <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com>
 <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
 <Pine.LNX.4.64.2404170126290.1757988@users.shellworld.net>
 <338ebe44-738e-82ab-7226-bbafaeb467bd@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Jude,
Now I am confused by the laptop lacking hardware comment..freely owning I 
might be missing something here.
Every computer I have ever owned, laptop or desktop contains a battery 
that has the role of keeping some baseline functions going like the clock.
Sometimes  its failing is a hint at greater problems, like a motherboard 
or battery quality..but it keeps the time.
Some too can draw time information if requested.
Still, the ability to set time and date are so  basic to computer use I am 
kind of amazed it is a complex program in Linux..why?

Especially given how many Linux distributions run servers and other data 
and information related services?
Karen



