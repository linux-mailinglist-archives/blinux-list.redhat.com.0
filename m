Return-Path: <blinux-list+bncBDYIZZNASAHRBRM33PFAMGQE4AXCOOA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 64770CED505
	for <lists+blinux-list@lfdr.de>; Thu, 01 Jan 2026 20:40:55 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-88a2d8b7ea5sf141608856d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 01 Jan 2026 11:40:55 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767296454; cv=pass;
        d=google.com; s=arc-20240605;
        b=CRj8iJzmpM2S7xFT5oQi5dsPBM2RPuLRiZWjk+rL/0FFeBUpAgawp6LTpmQYKKBAYj
         gEKvP0pwC2R1sAWvUq2PAmEb+S0Ulg63/3qCfoab48UXYIhqZA9SKFDuS2mzVC3Qxm0h
         cH+fhPSq+m+sauT3vBPVEI56ReRpMr8plBDQelXFtldqV+VqrZg+BjuVfyJzrpuzRZ23
         ANaMcRJ+rT1LPV4AehOTtQ0J2r6d3vI2mvXOSWzNfLHkYzEcaUZ6DTVUkIbTxdQ8GgDG
         ORf2IV5RmaEWZAhp+pF/UpBqn26lUjWaGNSVxZiLro9FQoujU6FLjnHjxarvrc6CmAMD
         41ng==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:sender:dkim-signature;
        bh=9aUBhJRid8ghgd2XzsfhaNG6EdXnSB3aVnNX3S9kcyQ=;
        fh=37W0BZVf4pauCwyQ2Wad+MSvFe69eS7e6AIk4ogd//0=;
        b=A4yRTnQGPUZAUbw1fJpMTD4EvKOQ5NO5RFGc2X7QJzfvO1+QYkyKknqb+lML4ArlTg
         6CcqkUKX8DB2ErvjPU1hIj9fLdyTEBnxLi+WWd/6xOLtkXAuOt2zx6Vh/qsWkj7sYBwe
         SoWCEYgxcOUELFrxfaDsrfJFCSZ543iFQHVTS5rii/mbFQc8DjtLLKRqZGpGsm9r2UBj
         CCPBESvL1Duy0bMNzIXkoztVcamfJudsmUssubXKwqhTHpOSb0cews4T5hhljVAZ7sA8
         bbRACCrvVEada3k5LG7AuagkrKZW9cVZtBf2HErmaPMnlh/eds+/v5FMwhG/0i21Tu9r
         hE9Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=DSagcjj5;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767296454; x=1767901254; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9aUBhJRid8ghgd2XzsfhaNG6EdXnSB3aVnNX3S9kcyQ=;
        b=T8EtbtJu7cDjVPm3Kmu/62trajXJHIBYzXX7rN6rwL+CELVCZDXhtsnafuGJFKNnVT
         8eFRRBQfTkv5eGEwl4r+PEq8K4uGAqa34C4VQRSdg7U0Wn/7hDWchatqWswd71HcuwS1
         4lyiveiCVzLbXcR4Apk0zUXzhaT7fJ29ryvUr6bvCHvY/FgmG0bT169jz0QZm9kQGnEB
         y3Yx6Ww2c0QA7dOCRQg3PIh9X5Uy0+2gcGasMEZOrHTaKHtLGCxGBnk1ygA/LDjWZr+3
         2OZLo5Ic+G9idhEiwMc/Ru8iKgov3sPKCWLYM302kGRNwW9Vy6ACvU2eVuUDI6lWBF70
         L8Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767296454; x=1767901254;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:delivered-to:x-beenthere:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9aUBhJRid8ghgd2XzsfhaNG6EdXnSB3aVnNX3S9kcyQ=;
        b=gAeVdLY0EW4ag0tWjy8QBGAXVbdmWWRbUoUX1kHAsU0ZCvW8Ty7OA2L2TR10ASxCU8
         3AisE9ZF2UG+1tB1K5YsVM2pah6tRPmtbWVsmbhbbRJAgV+/b/t9fqSxevd3mwZfXds1
         CMw7kDSA+Jc1l14HuxQm1DdaL216vJe9JZb4VHQ7RxxJ6RQ82nCDqN8HZkq5vTIecgZT
         Y2Y3g142/UlHqVa6K4Rb2ruONg0MUYYaFkWV73OfOOnFxIpsdAHNpW/CNuP8FgkpaMt8
         YJru011RfX7UZH7HRSRh5jvwmnFjyxlTjF1Vn0STgYtOWIVWjiNktzEv9X9GU/0bN/eY
         avNA==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCVLHqS03OSLFeo/HxkT4f45+Bre5CYSpNWR7ZVsNfPabLowggUisVIB0t4tWSeT1IfrZ9H6+w==@lfdr.de
X-Gm-Message-State: AOJu0YwsKLu8bqDr/zwiTQjOz47ctrHmKnYw4Jbbj2pYQHQBgnR8IJ2s
	YxDEUgPErdwSeP+JrFDXC8xs6lOGyRoN0Raz5vkS5PMuu1CC+6ZcVFcArWREHZyeY/M=
X-Google-Smtp-Source: AGHT+IH8WFHUZ1/ldfCacnkGyZI7HSNz8ems97XBg/nojPAAGhFDRrVntfazJmHBxE+HSZQb6BiANA==
X-Received: by 2002:a05:6214:40b:b0:890:259c:80ff with SMTP id 6a1803df08f44-890259c820cmr185033576d6.11.1767296453592;
        Thu, 01 Jan 2026 11:40:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWZJ9zL+IzSnekuRlBUc6Pod7OqC0qXR3ZdX8bxZ03zyHg=="
Received: by 2002:a05:6214:212e:b0:888:3ab3:a46f with SMTP id
 6a1803df08f44-890126358bals76209936d6.0.-pod-prod-08-us; Thu, 01 Jan 2026
 11:40:52 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCWmYvuTwLZ4is89d7utdGxMOaQVBhGoBeM6glbXaLJB1zkAIpgx2RSm8IYMMjoj0XXgpxuBo22IuomkWg==@gapps.redhat.com
X-Received: by 2002:a0c:bec9:0:b0:785:aa57:b5bb with SMTP id 6a1803df08f44-88d8369ec03mr457415916d6.43.1767296452135;
        Thu, 01 Jan 2026 11:40:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767296452; cv=pass;
        d=google.com; s=arc-20240605;
        b=kzBc/J7riVS+Lowr0dVUmQ/B85OGFO1x9ujCYRwTou8Gc7/FEAx1H5GTj0uMDmqvAT
         plJRILkmyCtXpzt8YzHiMDYCbE6DaUDqr/+n59XT5kBGMFHAo+hAyp5MUi6L+1fRk6XG
         L5BkXwUGnkYiWffEmmtNiOKAQpCrPoiWu6noKgo/AVZXCYNcX7vRgXkXAsBYcy7P6ny3
         r17DronwnXM0t3ReyAMtv20zm9uG5mPggGWV7wh232LaQl1a6pES39VFw2dWyPzmiEW4
         NRD2m4laZoPVEq2qVsa4SSHpRXMm7b3GQ4MTGnSZYA5pGwf7byJerBK3HGtk5mLw+ipS
         JK/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=Ko7SsGvy5pPykH0c98uPLRePCUbrtXM2Ues0BMu5bXs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=YXZ1+qnHPP7VLxyNWvxI/9OZPH4CAUK1K5BzPGF+fanOmbZBFRroRvecXbeJyhYA4G
         UU/mt3jSybCumH8dgZazdufplvUVWva6/c2Jz021RH/kmjMMuW4/mwX8tCwqD5GLBC1K
         caeLhBQVInreHv1riTze09Gv2JpiB0wD+DLb6UZ8Ol0PgLUiL2XLaue0ESFCX32o78Bv
         kHv4wYPN+jwA7Fq4WwdIicPTL11i/Yiqayy7qlZAvaW8168O2lSlmdQUZ1uKB4FePmYp
         jVSJERhHTol0W2WfRGbgyAbH5l+j7wcOnsls+DyeKHJOH+XiRPMOWEoI6yjPSHBaSfJq
         G7nQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=DSagcjj5;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-88d99a93f83si388451316d6.611.2026.01.01.11.40.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 11:40:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.42 as permitted sender) client-ip=209.85.219.42;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-141-O6LPBpdSMRq4gXlrpdCQeQ-1; Thu,
 01 Jan 2026 14:40:50 -0500
X-MC-Unique: O6LPBpdSMRq4gXlrpdCQeQ-1
X-Mimecast-MFC-AGG-ID: O6LPBpdSMRq4gXlrpdCQeQ_1767296449
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CB3B01800358
	for <blinux-list@gapps.redhat.com>; Thu,  1 Jan 2026 19:40:49 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C5C7E180035A; Thu,  1 Jan 2026 19:40:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C30611800665
	for <blinux-list@redhat.com>; Thu,  1 Jan 2026 19:40:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 367221956088
	for <blinux-list@redhat.com>; Thu,  1 Jan 2026 19:40:49 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767296448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Ko7SsGvy5pPykH0c98uPLRePCUbrtXM2Ues0BMu5bXs=;
	b=iPJ1mFzw+n5ek1Ulgh4+SJxZKxpGALVxXLCcS+yV+IrEDBGHmvZsG2MlXLM3rENvvv3PTp
	XIIzXzNp1jpkcgpdaTLG1MCaPruPCy6hqDvWsFeSiVouWFELhaV9GtARUqoMQY9aBDlAGX
	KwZAFIhp6iOE7NSJ17xC7sx0WrewSVlp+WkH9AYcjmR+H37sZTQvUkmtdqRRV2W7o/CcME
	/5f/SiXsY7T5VZkTK9tMnkHNsTQqQtfmeLQ+VhjWYVQdJ5dMHUm+bHi4LO0ujxc6XjV9Bm
	LDQiOaF2pGVJmA1KPBDe2ZU6e7e8l3FaPodumzVJYJcFC45duAm3LTj6owN4ew==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767296448; a=rsa-sha256;
	cv=none;
	b=QFUX5HwFgYhplNoKLg2EquuCNoqZUmTcBfzJtvtKwwt7TOkQ4aA4uMLpnUoGNEV6rRp9Vw
	yZEKyvdTAbIxzb+KQWMMhWu4aIO8o01AvJD7Ipdc7BW/FKomv83F7CLR//t/5fIv/gBteH
	v9/VrWMsTq3CNj3gpI/dTSwyBqdWzy3h6kGli9mRokxIzDbvwI0YphdxDRsluJsiZu0+l+
	Zzh6TjXrUsyrOoPDyyg4ykEaaZrpo50VA71t4fZmGqkKipV9tsl86q23/odGvodgm+g2XJ
	RGIkewrw11/IIZtu1DBV3b7tgW7uimmGtLefiMTyAuUw2UyNYL3hXjfSvtoypw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=DSagcjj5;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-696-9LTd2xlZPTalMLPQFiHpYQ-1; Thu, 01 Jan 2026 14:40:46 -0500
X-MC-Unique: 9LTd2xlZPTalMLPQFiHpYQ-1
X-Mimecast-MFC-AGG-ID: 9LTd2xlZPTalMLPQFiHpYQ_1767296446
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-88fcc71dbf4so58261346d6.2
        for <blinux-list@redhat.com>; Thu, 01 Jan 2026 11:40:46 -0800 (PST)
X-Gm-Gg: AY/fxX7pd6L5KrDOZAkT68mJ1V/3ilutzn9y6tybFuQuvIROm1gJkzUGrg8s37vu/Ag
	Bns+SvEhaS0WrTRr/f7beBKyE/9oo7skiU1AQAHI65rtAysl8+63qVdWH/443HD2bNu2Iijs1Wb
	w6orZqvekPp7Xsz75NtekpA7ZpZLcS259sdDCtMPhsPdXxWS91FgbwHILaKCnNM2OrGB6rHBmjK
	dbEDAn44mzoV5hd8ywowUG13mdBj/HOEGJdZp68qcH7xRBpU6wiB2rR8RbXCB9k21YWm5kzCH+u
	xQX2KcCvYw6SoVUz801UPqM9aBsmRrWlj1oBbk0/ImCvRjxmA01supsmi+RK9l9eDa71xnWngkJ
	f0YIRVYhfHV/tBPOaQt96cIjug3yPJNxziyyOVorX4HNHiuut6izU/wXg+ToIdIB6mmUHzdJL3m
	X3X4H3HED8WY2FtHkDucwt/d76DtMGsZ1WRdqhFipqTarGqzk2KMm9lZ2b12zmsxGgtlEYCl6WC
	BXpuGipWVfFytT6
X-Received: by 2002:a05:6214:cae:b0:890:183b:4c50 with SMTP id 6a1803df08f44-890183b4f6dmr241005936d6.69.1767296445990;
        Thu, 01 Jan 2026 11:40:45 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c09678ad1csm3154152085a.3.2026.01.01.11.40.45
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jan 2026 11:40:45 -0800 (PST)
Message-ID: <495c0d47-4455-4c74-a1f8-1648f290048a@gmail.com>
Date: Thu, 1 Jan 2026 13:40:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: vojtux_43
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
 <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
 <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <6fddcc0e-caec-42cb-b602-8df63068ae0b@gmx.it>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: pS1HBxyvrN_UpgVDRWe1cnI3zvSrSMbTDqEt2khaGcM_1767296446
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=DSagcjj5;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.219.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

i install vojtux_43 on one of my computers and it is running great.=C2=A0=
=20
However the only issue i have is orca is extremely loud at login.

Now once i login the volume runs at the level i chose under my sound=20
settings.

i am using usb speakers.

how do i adjust the volume for orca at the login screen?

any help would be appreciated.

Rodney




To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

