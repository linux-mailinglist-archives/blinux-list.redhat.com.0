Return-Path: <blinux-list+bncBDYPVTOXSQEBB75C7G2QMGQERB2DOSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE89953A83
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 21:05:37 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44ff196bbfasf13758751cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 12:05:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723748736; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y2mclYeds7AfIBVNeOSyueIL8eXw2ScAzWsP7HoX496OEoRlV+E6hS613P+71j99mk
         K5NZEyXTt7PFnb3n2mFpeYDDl2NwRHqx9iMR9NDZKdlN0BRD2dz0OLmUgkQVumOw6iAc
         LDZK1qZu/OGCiDxP4l/ltxU1vrQBc8lpmk+jL4K2oFhhhpulVIJNVmk7/4rYYtY8wKXG
         Gfbkp4vCh1WLRxJrCRCNHBWguszY5T8GoBcqpX6BwU9WDFp2+BRVA6zpkPHtt9h974M0
         Thiw9LRSRsB7SYJliQEVFxhq/RyEvezjbkRXAYsUh2DafM/mg15QJ98n3HOsFB9Y6DkJ
         DyPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=pSCw+sOQynIim8GtOzk/phZ1w8Kj6Sicc7bauYnJhbc=;
        fh=bKgkPjdWr6de7DqXXHlf/sKEZe0rZei6w5a9ASmaGSc=;
        b=Tvpk2DeA/utorTDA5CLHES4Cbtj2QTJMlZUfbqxbaeHfMmi1Uux+/9y7nbZvC+KI3W
         vGSKDlF2JNTvKUVylwR3GhKhNwMwdwHooS3qtNV1qM1IYV9Huts8EdwcrCZZIB8YyjGq
         3HrTtxPoZ7QDEqflHxbuXLnNB0qta5bgS+1M9kxen7egc80WL30qd99ynxIVP7uLGvbE
         Cn/2Xn7OKXDAMel8LFac44N+CIwY2SM+QiR9gj8oTaXopu2uQ1SwBbk1S4Zc1XBjg3/u
         ZIkcjF8HY4jJ5ZNGDIxQ01vKL/BiA+YmvH0ayTNT7KF9/89ZCBSy5UobLJ6vV9/GYEqK
         TVsQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723748736; x=1724353536;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pSCw+sOQynIim8GtOzk/phZ1w8Kj6Sicc7bauYnJhbc=;
        b=BbcT1saKS1SZuIgFHzWxU+VZjxTWZbBzc8NDlmcrzP5JwSFuVTZq3dbI1d1MomQcPL
         GkbRMU3k8C4P6SbKAbNigxKn7tsQOtVkTVG+nihvxXQQeI5AM2I70S/T3H9WT8RVTjyP
         FOlDxEz9HnaqQHvg3ebPmTpuGrX/yVYKq7xn8zK0juXDzqzkUNQUV5arRGiJ0sCsEq4S
         aNLHSaTBc2VtoKUgaqqqbNb44mUoGOFbL+5um1kygC8h3cd4WNyrwCU5LCc5749u2eXy
         WSaOdxNf1FCaP4AQMqoNXlobelda3sQMl/ndz8suZd5FgAf52YJhh/XP/wurVey8Jc4X
         vPdg==
X-Forwarded-Encrypted: i=2; AJvYcCXF0gfoQ/UoNQVvHx92nAiXHauBap/11DY9YYLJ7DLLvC2xUNhmoG2dBcbqr8PRubEGYzuxTw==@lfdr.de
X-Gm-Message-State: AOJu0YyzrJc3PpaccQjh0oRewqQrP+5mNtFlFR0nH9/xSzidlfkTZ1kX
	I5BQlRjXBr1Mp1eeUHrx91At+h4tE/bBzX4kVBnzN5pPHb57gsqBHBANoCYUJ3Q=
X-Google-Smtp-Source: AGHT+IFCv3uv5YuWCp1S3OyElc7pEh/mJSOXDkPmctkGXsBMs9eLcrV7MMjf+w6FNMreO1y9RoYCTw==
X-Received: by 2002:a05:6214:598c:b0:6b5:db40:8dba with SMTP id 6a1803df08f44-6bf7cdca1e1mr5877916d6.11.1723748735657;
        Thu, 15 Aug 2024 12:05:35 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:e87:b0:6b7:8ba3:a39a with SMTP id
 6a1803df08f44-6bf6d8ba98els23106396d6.1.-pod-prod-04-us; Thu, 15 Aug 2024
 12:05:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWGeErjrbGkh2UPhvayfB8O7vvh7wtf2rSDXZPYHmQMloIIOxtwhYgtKSjZwY7QT6K2EpCEfX7ANhagdw==@gapps.redhat.com
X-Received: by 2002:a05:6214:5d0e:b0:6bf:7411:8814 with SMTP id 6a1803df08f44-6bf7cdf1614mr4401526d6.13.1723748734531;
        Thu, 15 Aug 2024 12:05:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723748734; cv=none;
        d=google.com; s=arc-20160816;
        b=h+oR8q8Y8wBXbmyTESJ55BXQ48ZXxEK4GiH8PibRQ+WP6TBtqSM9heW5uyUM6UQLdM
         QwYc4qL7WrSY7mxuXg/CO6AyJuCZya0eaA7DLhs4G6WcTBP8l37xh+yDF+rWkmbQ3AbB
         PMXjcYRF/IltEYy34uJwcOL9KZjU6ZJ8+q1MyFh4WfwVEbpZ4RBTm4RoMDmwc0i4fSfN
         1iSpbzuwi0ieqjdvKhJaY6o/SBBdKjXRea1NOKwo1CzbEDnJfHIBkVd1gNVvBENuJ2p7
         KYKk5r03Daxgu3NGjvJC3LiNDdGzIF6isaUrd1FcAlBZHKmtRqNKXqW1jeLJLhA+kp27
         iVyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=yKFQ2vamxmvrqVk74BNiZbKg2KjKCq/rVOEsZylsewY=;
        fh=yTKr8q6pFYduKTerJtnn93nMk1bIbSkV1dY8b6+YXJw=;
        b=oNmhqRcWEmajzqqKSQnSlcEL9z4R8ClNw6oQi/V70WQzUNDQSS0GbQaPNS/rlM32wU
         YJ9IW8zw2QBld1agUZIh5UB2nBSNDQpB3HbbQz1VZDZXNe2Xr6LkVYBLmbeJi5AWi8X6
         ObYAObrk9lP9HzeCavGBLshQIy7nyozWjP2shUcgBAPtRq5HDaoae3p2PpiS4iPFiwmk
         WaI/bMWXhjR2xTaKAzsA781CiTfvTe6jExT81Si4vJ5ZeHP8Hn0OB1aqI1NqSVzfpC6+
         Np7deEJEHm531xvBDtrg8FHqWxCf4TEj/nvdueoqPknHlyYAXKqUftN1QK9+ytvCttWj
         K/BA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bf6fe03539si24258496d6.186.2024.08.15.12.05.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 12:05:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-381-l9P_Mst-O5KU7LNLzLSECw-1; Thu,
 15 Aug 2024 15:05:32 -0400
X-MC-Unique: l9P_Mst-O5KU7LNLzLSECw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 249061956048
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 19:05:31 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1F57B300070A; Thu, 15 Aug 2024 19:05:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1CC68300019A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:05:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AB2491955D48
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:05:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-292-uKEwk1kVNtasLTW4D3-D4A-1; Thu,
 15 Aug 2024 15:05:28 -0400
X-MC-Unique: uKEwk1kVNtasLTW4D3-D4A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WlF200DP3z11gB;
	Thu, 15 Aug 2024 15:05:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WlF2005krzcbc; Thu, 15 Aug 2024 15:05:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WlF2005GJzcbV;
	Thu, 15 Aug 2024 15:05:28 -0400 (EDT)
Date: Thu, 15 Aug 2024 15:05:28 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, Kyle <kyle@gmx.it>, 
    blinux-list@redhat.com
Subject: Re: emmabuntus info
In-Reply-To: <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
Message-ID: <460a6c10-5ece-23e7-abaa-8acbc346b07a@panix.com>
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com> <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com> <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it> <9b92c4ff-0e8f-3e9e-46fd-71d961e4ae49@panix.com> <846993f3-1c0b-4ae4-9ff2-e0107649c855@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

When things are not in normal places, I take a little time and go hunting.
Sometimes I get lucky.


--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 15 Aug 2024, rodney jackson wrote:

> Jude,
>
> thanks for that.
>
> would not have thought to look there to install it.
>
> i did download the iso and burned it to a flash drive.
>
> i did boot from flash drive and got orca r running but did not know how t=
o
> install it. after i eat i will boot it up again and try again.
>
> =C2=A0rodney
>
>
> On 8/15/2024 13:30, Jude DaShiell wrote:
> > Installer is in applications -> system -> debian install
> >
> >
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

