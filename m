Return-Path: <blinux-list+bncBDYPVTOXSQEBBUWX7G2QMGQELU7ONDI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id E36C1953C3E
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 22:57:55 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4501f170533sf16339711cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 13:57:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723755475; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y5W+lqcCRbxyItpsIFCHBJGgMp6F8cxT3VHQ75D3NNFCPUNuVcQcyrmY6H2pZ7K9Er
         +cJki1wnWdAK8TIxWOM2szmdhZ+o82J4haXmFASZLa+uYEeyDUZrGCesz+bk/V/e5trT
         TdSAKZSIlKdpR8m/rt7UqjOaksaIkQUj/oMAPvt4JDHgB8dx47uoVCZPA1UA6OfNexLW
         Q4hMVTuPEDPjFqOKnqdeNrQLAuWwyUAzWlDG+oHOdDVezwmbFDWEWxO10jxjgMNle4cj
         0ppd2rzNyJtqTHHktG/33boRuCi5LnH59ygwcXPli54lt13zlYUVgg15AWJW1yY95FE9
         XEvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :message-id:subject:to:from:date:delivered-to;
        bh=nL0+RLYIvJss02FzUtqy/lY2Z0XT40SUG+cPPHJl7Wk=;
        fh=va1xqLMp1JNsMF/u3gh8rIGQSjkK3Fx4ocZm+XDzILE=;
        b=nay50Osjo4xRiJJfve5oaDQihIdlJCyXEO6BExlTMZ7VgzAT5klRO9CfkrxhFbOr27
         t8AQf5URw+NwRiKaaUcOg0mnBFBrt7B5YQBIZsy8/2glP1oVkrgCEJdoaRAhn18xq+14
         lX2V6FE8roZmz7G92mgVS2v+Pr20woKRe6ezcIQnA4svJR8VvNqNYzizgyWRQ74WW84O
         OwnHgnqnO8VmD2eCVsvpMa78PLrDPXpKIu2IBMLoEmptpD9UNqnoO14SVe1vjYfv0Naq
         FS1CxnrD+7OH4AyjFkAGKwNCsJRMKVvfhprvd3Og3IBm0i1vVlM82GQlbDEOdzlvsqOj
         W9XA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723755475; x=1724360275;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nL0+RLYIvJss02FzUtqy/lY2Z0XT40SUG+cPPHJl7Wk=;
        b=UjmLD89upNlB/zGejhBobL3Ql5W+dGd72ooiAvTBN+oL3PHDQ05OeRDWmz/vHtY3MT
         MYO/dYPgeAQHwxLnHFKvZ2R9NrG6fiG4pvWrWoUGhQRloZJb3JmZjBASuUJTnnMgz3GF
         Mupcp59kz3N4zRbEQVlh0UKCSBgTnZRjwaegS/y1AE5zatRxUymxCR45zc6BnwNtaUJz
         FtXkcFHDGo9R6tahY44lv4ADDwLsX5yv9uB9fhjis7DKnAZlnbcDzL/b0JybBOnUNElV
         xLkbCuyt31OF5hM6alDug326LRXArY+isb7xKaPyWHK8C2u5uAbjw0GYCyYQd9nutEus
         8ezw==
X-Forwarded-Encrypted: i=2; AJvYcCXlXakeXIDViWxXqkf7e+iDzlayzJr5kmKLruXqFxcbRhW2Rlj6Aqoy0cJCK+yFn7xhMd4My1q+wEAJ//jYD7wDPwkIRheKoZQh
X-Gm-Message-State: AOJu0Yz20j8M+jnwnbmABdEdeU67WUxUnyxgdoSji7oHpYpDzp3zumBZ
	/7TSf20/GB9324SGPrnT6Fv2f9e1JE+zEcwBFOgjtNpwe8hqogbbEwRT1ZNFtHc=
X-Google-Smtp-Source: AGHT+IE31ssjyXoeo3LCQCPHwMm8w5hiE2c6LVpK+x+LPpHvhK0jN9YYq03aPmct/xlFrp2922g+gw==
X-Received: by 2002:a05:622a:4006:b0:44f:eeb0:4c0b with SMTP id d75a77b69052e-453742cbf18mr6937451cf.34.1723755474679;
        Thu, 15 Aug 2024 13:57:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a42:0:b0:451:8d59:9c03 with SMTP id d75a77b69052e-453672ffd24ls18898081cf.0.-pod-prod-01-us;
 Thu, 15 Aug 2024 13:57:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW1OPsOLzN/UsBbKkS4QHvs+pGTHUoLGYBTOi7Ae9awuuAxnKNko756DhXC/HNl73MmeAQUq5XNg3qVum3SqcZ+ZzUMBIamOGLEWX1j
X-Received: by 2002:a05:622a:4109:b0:440:536a:5915 with SMTP id d75a77b69052e-45374298236mr9233171cf.30.1723755473811;
        Thu, 15 Aug 2024 13:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723755473; cv=none;
        d=google.com; s=arc-20160816;
        b=Gr4+KRfHOV8PcckqXP4zUOjY7O80/c6pulak/WY0fmAy5XJPfa85dNwm6ZPm5g/Cen
         lVyjlBPMHpFThNs8HDqPEyFNUxZwyi8Fei7HD57sDUNrL4ft6q8kmQqmWwWmKQd/T8ya
         H+bN3NFIttWO06eF/z6cbGUoa7rnJtt+DY8aBqoy1sAPCjjzoAT/KwF26i41SFa0utiK
         6jY6RTUFmCmsC/m+hWpItAh1TuMZ5uyih7CP1kyqD4BMBnmNuwlj2IjItlbjU8olY11x
         L7a/wuSKqCeTko7mxSaQiAB9jjJQPKa3qyse1CraCEU7lktFCyMe/omtczZaILEn0ztY
         Ikkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=Q7DQPK9JvoWZGJu5a3yr7ZXZRguTTrZvgLOI5cBo6fc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=vejHwqII+LwkWZcAcgDVlDedpdRtf1Yn+/h83xQ57AhLJ1855SCW8DjninV0gCGqIK
         Qjv/KKsIbBVitmqT2a6GoCghvpCIw4XpK4JxTOHFmQwbvBITHQsjS+2WTb0dTgFBza/C
         XOyGyXkTcaBggERoeh07QFEXPkRQN6+UzFOIFA4GkC+J1G0OA7hlgg24XgJw6N4xD9MK
         IAG/7PJZXtaGitTA/DDSn5BXbiVLSaQOVPK1s6XOSXoHJNB5QKfRGlyaCi63udSa8tsM
         VZvYG21W1KYigEDGZt2tDUrjBKuN4MabqVINk1W2q4YKceXnjJjDPmg9Y67Lvn/nXhrJ
         t0Vg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4536a08fcbbsi25624651cf.445.2024.08.15.13.57.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 13:57:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-631-qzJwGrBQPKu9V4I4wV3Bsw-1; Thu,
 15 Aug 2024 16:57:52 -0400
X-MC-Unique: qzJwGrBQPKu9V4I4wV3Bsw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B111E1955BED
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 20:57:51 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AB3313001FD6; Thu, 15 Aug 2024 20:57:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A8293300019A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 20:57:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2F2E619560B4
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 20:57:51 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-580-tKMB0ZytPRC26FeZ27iESw-1; Thu,
 15 Aug 2024 16:57:48 -0400
X-MC-Unique: tKMB0ZytPRC26FeZ27iESw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WlHWc4jcVz1B46
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 16:57:48 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WlHWc4cmSzcbc; Thu, 15 Aug 2024 16:57:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WlHWc4Y6CzcbC
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 16:57:48 -0400 (EDT)
Date: Thu, 15 Aug 2024 16:57:48 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: Re: emmabuntus info (fwd)
Message-ID: <e77fc3b4-6897-167f-c369-91a71776d0f4@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 1
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



--=20
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

---------- Forwarded message ----------
Date: Thu, 15 Aug 2024 16:43:25
From: Contact Emmabuntus <contact@emmabuntus.org>
To: Jude DaShiell <jdashiel@panix.com>
Subject: Re: emmabuntus info (fwd)

Jude,

All information are here for accessibily install https://emmabuntus.org/emm=
abuntus-accessibility-functions-manual/

and for all install https://emmabuntus.org/emmabuntus-debian-edition-5-inst=
allation-guide/

Patrick

Le 15 ao=C3=BBt 2024 21:04:12 GMT+02:00, Jude DaShiell <jdashiel@panix.com>=
 a =C3=A9crit=C2=A0:
>
>
>--
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
>---------- Forwarded message ----------
>Date: Thu, 15 Aug 2024 14:55:00
>From: rodney jackson <jackson.rodney.1970@gmail.com>
>To: Jude DaShiell <jdashiel@panix.com>, Kyle <kyle@gmx.it>,
>    blinux-list@redhat.com
>Subject: Re: emmabuntus info
>
>Jude,
>
>thanks for that.
>
>would not have thought to look there to install it.
>
>i did download the iso and burned it to a flash drive.
>
>i did boot from flash drive and got orca r running but did not know how to
>install it. after i eat i will boot it up again and try again.
>
>=C2=A0rodney
>
>
>On 8/15/2024 13:30, Jude DaShiell wrote:
>> Installer is in applications -> system -> debian install
>>
>>
>
>To unsubscribe from this group and stop receiving emails from it, send an =
email
>to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

