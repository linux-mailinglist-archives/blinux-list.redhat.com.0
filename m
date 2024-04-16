Return-Path: <blinux-list+bncBCFJ3VNT5EIBBHVE7KYAMGQESCY5YPY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B3D8A6F24
	for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 16:58:40 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5aa3282100bsf6739122eaf.2
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 07:58:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713279519; cv=pass;
        d=google.com; s=arc-20160816;
        b=GfuSJUImgs34aEkaWCfKCBFj18SezoTrTnhQPKaShi4tOpPbR0xHFyCNZMEgwrxmuq
         WUZqzwEZKp93ZlZSxWZx1B9W2ceHPkGcJ8C61r0d89xC4Nl2ADxDN+RwiaXYEUUfwM2M
         xKWrebprgu7WIhVfuGWuHbjqLt0G5uRBtvPLtzkVlMeOmVYePfeBb2rVc7uw2YugPJ/Z
         tZQ6h9/zPgM47z8ux7igUsI057rQ5KBOpgJdOuelR2U7zT7yVeb3gRdUUI31y1Ukqwcf
         TJg9JZI/AjUawaCQVf2sA/ryxOALdSzULMkWXKcR5ocZJkpDrQqXoE5J3dNM6v42/VDg
         uuNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=OeJf/uHJOs4UnaifR6CEchQzwO36zUM5HdZbRhtWEWw=;
        fh=T/np9bw4dzSX1Q0SKu9nR3LgQU9ivn08J9OoToABBw8=;
        b=mmqQbc5nojvvbelM4bAY3sdtknjqNb6rPhLQhx5KTWQ5LaaoDx+rNzlJxkBD/TUMnp
         A+q5vrzqnozqFTkbkOIKlkq15vYw4qmgfbmdcllNuzGMe4/SzelAm6bZuoiiG9t3cqkS
         JT57Rqlv7jx2vHtnmYOvZZTIjk3CZ8D1CD/7mDAal5l3fUNuisuPTWoaFgBHIYx8vpkN
         JpPogk2NdRsjFlnmzm2uywFrv5U5e33jk3EuQzLaPR7Pt1kETAyamcbN8XvsRL55+iW9
         DcolOg/rRog7it/aI/jhKBNUN5Y1YN2usn4KK0wH4volYonlqdbOCneZqZuVp8RfLsDr
         mK0A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.173 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713279519; x=1713884319;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OeJf/uHJOs4UnaifR6CEchQzwO36zUM5HdZbRhtWEWw=;
        b=kF33bb/Xb/IaGa7JmUdbzd0pt8eBKNhV+IaZ+BX4nw82iOBj1sx5GGxdrkbrd/rVPZ
         m+1HH7ZLOm/d907FSLtXSxIYBSI/MzljI7DBwwA6yw3mmNY2TAeGB/x+dOSkYF8jzfWU
         aT84zJsw3qlfZm9tvAViB6CXCneq9rDZ4eHmJ+EVtCx/ZJ4XlMIX07XE0yGDvuhZ6kI4
         IBYBi0b1DC7/iN8x6LYVtMaCMf24ELeOFKGAdk+xApdlSYFJrJgIkRsOv+0kT8icXXyU
         +vVzMNb4b7omr8Rb7u6VHiWP0v4JhbjeS18vegnzqfmvZV04JDjIyxiM3IrIXnKOYto3
         9xgw==
X-Forwarded-Encrypted: i=2; AJvYcCUp4SMiLZszYUXDPpaB0yeij387QEX98tkLbBm81wR+M624oSaJWg10TNdLtnW4vaTRBr7zLCmMWfJp8hyGxa4/bkDj4BDRX5sH
X-Gm-Message-State: AOJu0YzpgWaRy0g3IREymULUqChSgTBsfERD5OfkeIYoQIvlHELG71zH
	2CfY2UjMj1Tp2UQM9wHxuqnLnLkslaXTo1zIiJOnNWbXrupX2Coc+wEKapYekgw=
X-Google-Smtp-Source: AGHT+IGpt/IOPUpL0L/ueYmu/qfQZdsu1qeYxSyh2GajrDPmqc7VwJ8jRjUoNseIuenSyarzaQitZw==
X-Received: by 2002:a4a:1ac3:0:b0:5ac:9ff2:8ca4 with SMTP id 186-20020a4a1ac3000000b005ac9ff28ca4mr6872603oof.6.1713279518518;
        Tue, 16 Apr 2024 07:58:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:16a0:b0:5a4:ee4f:96d0 with SMTP id
 bc32-20020a05682016a000b005a4ee4f96d0ls2171240oob.0.-pod-prod-09-us; Tue, 16
 Apr 2024 07:58:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCULlbugPv6Dp9iYruUe4lhL6SfhggsJNFnCvJH9w1RG4mPJHpjqsHIq0IyFLYC90FAbKrlCejj6gtilJ4zGIUnS2z2RvXiyPEX5RLAY
X-Received: by 2002:a05:6359:5092:b0:17e:8ea3:83cc with SMTP id on18-20020a056359509200b0017e8ea383ccmr17041337rwb.24.1713279517654;
        Tue, 16 Apr 2024 07:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713279517; cv=none;
        d=google.com; s=arc-20160816;
        b=YTrmz+59yiNOcx5qNUYR+copaZiaQDbF1WO4RUdIte8uPQwp/ioSz2meIdZtGYTIPG
         gjy2TWJ1+YkpKCrAwmXjBdoDNh9YfuK11kdDwBSDLXDpIJnQoRTSLvneFlO8GwahEV8D
         /uqxel+3yrVhtI+1nCA5lWpU7j3hghLX56PS4/2xh9QwTHNzZJznQ+cvaKj9jPi4LfuQ
         LQKzYiwZnVN56XcGLbBMmmax9LB6EGi1E7xK2j3RH96AyxDQgr2U2K5NCAU7X2EgN/dG
         GOIj6UZlaPJ3ER2cXiiv/z6/DasIN7lUTDyScVoe4XJVdg1A/Toy+pnYDJCVXXLSU6Fg
         CYaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=NBn/Flqg8Qc3577C5Dyg6PJyfsaA2MfXv5EVGOMmEiA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=eXdg8n7CCDX1S1JK7eANcw7pKSs/aqzOsOTMHMtpcOLokC3Qd5JA6d9dybTMwBKlTs
         chIRFB2ECOsPNb9dOHaY/Uv2yN/Uj80m2VrLuDXiTjZm8agbnU1CrUWagCXc5NHAjagU
         nKXT8KvjLQZJVa8JWpsSO/Hx9SuaAfQyie+zeYIL66PeQlej1H6lq31ObxQZNkCHf/Z/
         lP322zQd/pfDdNoSX6xQTlvsjwIocFFq5y/3snDZJ9/z7ObaDLzOHQgpHByA4xKxMa4g
         2ffO7uJKzF+A5apkbuZqfU2uTJwwpm5NgYOgj+Un/QfXhhabMrQ4FLvbTTGChra3JQY8
         e6RA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.173 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ay3-20020a05622a228300b0043699dc7b56si10098295qtb.147.2024.04.16.07.58.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 07:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.173 as permitted sender) client-ip=209.85.167.173;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-YmPI7NWqPmyW7oPPFFxl6g-1; Tue,
 16 Apr 2024 10:58:35 -0400
X-MC-Unique: YmPI7NWqPmyW7oPPFFxl6g-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DB49A18D65D7
	for <blinux-list@gapps.redhat.com>; Tue, 16 Apr 2024 14:58:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CB51218CC396; Tue, 16 Apr 2024 14:58:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C82AA18CC395
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 14:58:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DDA2E189232A
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 14:58:33 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-641-KLUwBSocNPO_-hP3CdVq5g-1; Tue, 16 Apr 2024 10:58:31 -0400
X-MC-Unique: KLUwBSocNPO_-hP3CdVq5g-1
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3c70ae58f4eso742487b6e.3
        for <blinux-list@redhat.com>; Tue, 16 Apr 2024 07:58:31 -0700 (PDT)
X-Received: by 2002:a05:6808:6147:b0:3c6:127c:3509 with SMTP id dl7-20020a056808614700b003c6127c3509mr14377208oib.22.1713279510180;
        Tue, 16 Apr 2024 07:58:30 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d19a:c1a8:c935:2003:e221:a93d])
        by smtp.gmail.com with ESMTPSA id p5-20020a056830130500b006ea2fbb5007sm2288484otq.18.2024.04.16.07.58.29
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Apr 2024 07:58:29 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: after copying sound theme
Message-Id: <A3944C54-886E-4F50-A8A7-5E3985B85AAF@gmail.com>
Date: Tue, 16 Apr 2024 09:58:19 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.167.173 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I am using linux mint mate desktop on an experimental basis.
After copying the sound theme, I chose it with sounds.
I raised the alert volume.
After restarting the system, I noticed alert volume for sound effects is still at zero, no matter what.
Why might this be?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

