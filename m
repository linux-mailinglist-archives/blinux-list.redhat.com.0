Return-Path: <blinux-list+bncBDEPFPWCWMDRBEWBU2ZQMGQE74IBFYI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D54B90538A
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 15:20:20 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5bc5d474d8bsf18412eaf.2
        for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 06:20:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718198419; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQzoVh3uAk1szKk7XDtLEByeP4KozjUK1tACf0MHkhlL1SGr8nyFCBj6ElTX4Xnl7X
         T9idtgsqmux1KKTsbuKsHBfKhQP1h5sFNsZ1YkzPtdCsOsGAudwM6DVHvs/1NiwpZOov
         nUdNNlMSKx++qI0TIR7VMVKh1lWaHn09tA/JYyH4/gmCdQ0QYWwBCcPHo+6qChCrU6HW
         g6sUWIRgQx6h+7YF+3meKw+KQFDmLLpe+ZPMc6hshpVSUh5AhyhfABmAddJfyVaTvCOP
         B5aU4lhbILNss49+JVj39LFXAqbsMfdOKQ18sqkQnPpjYQuESWsEDuwyPPP6VBkRUqrD
         dJIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=1WOQYIPSA+FNxHq+jYK01GUdHt4fFbJDNVuXHvsOnJg=;
        fh=AVWzEmOFhpYruTlAj6hu8qUctkpzkv1qbVjeaWP7Z1U=;
        b=IoqRNgZHmmdYxiyX1yQTuB6LUO0R5WMOiJ+UAWpoXwoYeN7mewOLGCSGVCF0+jJ5qh
         XQwFHTgDhm66OM43bb9Swrr0sF3pF1TpoZyixlW9LyW6jsWrIj8mLXaZvzqg82cE2CH8
         Y8H0vCaxbvDTWfHpva9Y8qG9T9RPDK8ppHTSp29h/2JhwjLR6kUNTLu53qp/TL2wd2In
         sgG5xEmo8bRHxgBwSD2gwTgvt8HZwBqmZ9ctZ0HXCLXgRDPaZrgxZZjRO1cMN4NpDWCw
         y7JbivejCuQFR1mbz4da4NJlth6C7JtoSsCt5Akgf4+SOw8Z+TZATGjEbMOLDnx6gLQV
         yZQw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718198419; x=1718803219;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1WOQYIPSA+FNxHq+jYK01GUdHt4fFbJDNVuXHvsOnJg=;
        b=Fo3+FEi0uJsa8J5wGJ/+lj3/+IcU09dQj2rKa7P372E9tnTnhE6WPSPPUBG4Y6c634
         8PvZnStnspp94qhFOyxxKQ+vsGOHqV2EbY2wPyv6pjVgEOD9ENleQLm1stKvq8HRPmtn
         OVQl5DzkJD4IB6fKiBb/dGCXXRfODIUL43hmqRv33ZUeZqWjuxFVZZOwdscoLKN1xUA/
         OquBBWeLS5P5+gikNQ5zF4IzKpxiPvsEUN6mzCIGBkdHmalcWE+a3pdb8mbgUJ9NvhOJ
         kABWjTlpypYCWo9Tk707aeXU+s9eKRUa1VS6PLX67Z/9JvqsChEwoWyPFBdC02QMU7+4
         o3gQ==
X-Forwarded-Encrypted: i=2; AJvYcCUvxPOzb0JJaaMlZsAuoGyHUVdcLBmh2a/IIfYreFZv9ifO264x5tJ7rPsMI3TN/qVHuL6rDZ1aZT05kEC4Bz9P0DeJCnMtXGeH
X-Gm-Message-State: AOJu0YxLUo4QFogQTpq9DIai1pg2eTLaZLA+oOaieP0RUmhdL6QIh2kf
	7bXeTH7rtbcET+sn4X7nbR43pTFLPERzQVjCz3msT03XrjXLrAbI2euLWZf48NA=
X-Google-Smtp-Source: AGHT+IE6ruwHJmq/s1hY6OcP9Wzv2IIx6b7lYY4tDpFVPOpv7xo2hNVPcoh61/B9bK96z3/GuPuJSw==
X-Received: by 2002:a4a:8552:0:b0:5ba:ca86:a025 with SMTP id 006d021491bc7-5bb3b7a9135mr2038201eaf.0.1718198418396;
        Wed, 12 Jun 2024 06:20:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:d47:0:b0:5aa:44f9:9b11 with SMTP id 006d021491bc7-5baaa2abc07ls6060473eaf.1.-pod-prod-05-us;
 Wed, 12 Jun 2024 06:20:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWBy4fRVrhgamx7WSbxWyo0BkjEHgiQQ8aI2FK0+Nkz0xTTLV8YEosUQolD/XyU6fN6g0MHkP3g31Z4GOrRQFxt3vf10b46BPmBmbnQ
X-Received: by 2002:a05:6808:2023:b0:3d2:3566:9cb8 with SMTP id 5614622812f47-3d23e1236abmr2069583b6e.53.1718198417260;
        Wed, 12 Jun 2024 06:20:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718198417; cv=none;
        d=google.com; s=arc-20160816;
        b=MUUMXMBwgM3xDuhdktB4WLMPtSZ1auskHnhJ4lgJL9ELkBaKi3cOdY4CWL5s8bka+L
         CKzWbvd8D1Un8lB3dQJvEKd6ysgVvChuNMMx5/lIdA1S13gVElk0OR4DQbTr62Du9ArT
         Gzup3f+1lZPfzrY2idm1ypMsS41IE2ki9GVs1VIO1TTNPRdjZrYQMsk1D+KFMcNa90Vj
         LvXsiT8lH/S3/i39Kah/ItJN6Duc+s4n6WoPp01fJKfTw136nKTadV6wf+7EZ7cgKB6M
         DDQLf46Exf4gvF8PBQnrR/Y7rxQFwpJCwGJhHTyLMSn+zCbahRSrOPr6Fq2V/HheG5vr
         2YAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=sA1vEVRAJ6GY+5VKOx7r+ATQUg393x2GpWe5SlAp89Y=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=UEdsRRUiJUNAZ5r1eJCC4fIY8p85+/p3sV5LLyLmmE7DSiFsT9e1oMMWmtrAdSWGCS
         d3dnm56gsDbhQ9o5RjsTfSDwrCLqDHJlEESoWg0K89gala3dHnMGC+RAvZO31mN9dpdj
         Eb+rXxRPLhN3H2a2n3+2Mye8KTRo8/w8VbsFdBEpPH2MDplPzqr7C4Nxf0JzPBPwQbxC
         alJCmBMwWp96pJ4hSM6DhLN3JVmHzyjtSU9qnF3yXQzvN8Bgi4W9Njr7KWhrTTpWqC2P
         qKJTktDTePbPUWhMBMdz2Dqay8YyoMUCTPK5QSZY2H68b/+DTWbI6ehfdNNYVu3vq7oI
         4GHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id a1e0cc1a2514c-80d6d38ee38si136273241.104.2024.06.12.06.20.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:20:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-561-KZVz0HrjO-WMUiDPEVrFIw-1; Wed,
 12 Jun 2024 09:20:12 -0400
X-MC-Unique: KZVz0HrjO-WMUiDPEVrFIw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A430A1955D66
	for <blinux-list@gapps.redhat.com>; Wed, 12 Jun 2024 13:20:11 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9395619560B4; Wed, 12 Jun 2024 13:20:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8FF5719560AF
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:20:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0CE691955DC0
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 13:20:11 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-392-55W_812vPoqnlOCqTGWObQ-1; Wed, 12 Jun 2024 09:20:08 -0400
X-MC-Unique: 55W_812vPoqnlOCqTGWObQ-1
Received: from email.seznam.cz
	by smtpc-mxd-54dbcd9fc5-42krr
	(smtpc-mxd-54dbcd9fc5-42krr [2a02:598:64:8a00::1000:4c7])
	id 4dd2073d584a54674c38f621;
	Wed, 12 Jun 2024 15:20:07 +0200 (CEST)
Received: from [192.168.1.173]
	(host-213-235-142-85.ip.topnet.cz [213.235.142.85])
	by smtpd-relay-84df5ff787-kht89 (szn-email-smtpd/2.0.19) with ESMTPA
	id 821a84fa-2c96-4909-802d-25f603d808b3;
	Wed, 12 Jun 2024 15:20:06 +0200
Message-ID: <91ed4ab0-0c90-4188-99d2-7445be7422b5@seznam.cz>
Date: Wed, 12 Jun 2024 15:20:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
Subject: Beep in Fedora
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: seznam.cz
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

Hello,

is some way to add beep before startup to Fedora 40? Please, how can I 
do that?

Thanks.

Best regards

Vojta.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

