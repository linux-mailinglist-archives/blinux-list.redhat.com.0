Return-Path: <blinux-list+bncBCVPTHE7K4IPPNWSWQDBUBAFY334E@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7F1930D13
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 05:46:01 +0200 (CEST)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-491198b94a9sf1664191137.0
        for <lists+blinux-list@lfdr.de>; Sun, 14 Jul 2024 20:46:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721015160; cv=pass;
        d=google.com; s=arc-20160816;
        b=beNtY/21BvpjAceqwKCpc21R1eVET1LB2ZbOUIu+IklJw2hxACY5lL2s/aDBEkdi8x
         j7n3qYzar5hI/wM9LXzMQoxlyc5l9w4cIh2cT/96oFZcncZw5/Pcs6etlou6Y6Fsp3IS
         c8k5h7JhLa2vaMg1igkaNbqg5HgyWA305kO06IPHnrH9r5XoYWg7yu17DhGWMmH82QKJ
         CrYUIAYVdfJOu4DcHMWjt1FNabkoPjDtzdLh1WiPyTjMp2LBPdybKKiOUeZZideHZ/52
         TKOaZDY7W55lypxEXcDlAAsKxz6R7AQtf9+kA8VQeLjJwexny2QzLOCOb6pfYrAYd2JS
         Ejpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=mMMl/HykR17VXz5ryvFpOu50MhSTyBSsg21ERSGiv7I=;
        fh=IOWq2ZQZ0lMkrSMBOC/5nvYtm2W0BzwB8P1YWGEblH8=;
        b=adD58DRr/E/lfEFKAVwHZf4yUtckPRTL/z4tFm8RKNkieWr9UL50wO/Vru/PDA4q2o
         jU88L8227BjNIQkKuhnPXpQxGAo5nKvKaPdp21XgpkNTeKHVeteAvGPF0kAnwwRhGTkQ
         4wxqMU5Vo2S1vsZ6QbgvNRUrBz2Mn4hRRb4zIa//rNMwAA1vzvgS1SfXJKupRU5Vz7aN
         qEzB2mqNsH5R35DU4NN7psYy/udGc6+k5kYvaXoIJ5J/Jtudp0Et8xfZinpg0dMxKGBh
         GfOq2hxFxZwcOkSR+V1XJdIPjKooQ9Dst+5gqe3sOGZkzjESiQPZ7jpeplu0u+zk3Sxu
         xWnw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721015160; x=1721619960;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mMMl/HykR17VXz5ryvFpOu50MhSTyBSsg21ERSGiv7I=;
        b=laAKlH6M5FfAypFO84r5HqAFoqwsqs+a5xQ5sH1wFVR9mTa/xIBvfv8tOJyXnj7n2W
         bqiG09/DnPYgE86ApAJliH/I3IcaaQQYVMYDr2lFKm//U4Fnm3HdJmVwJsQ4hEzpwTBt
         W3TpC0m7YMNtYPe32ZEF/m9mDTbd5gCk6DaQPlX9GXaZ+I/xEQead4cY/RItmvYUzwVK
         n7GG5W4Yd50sU0IWCHszOr3IdtQsmzvSpYdgDF2CBlJgBiBohiamnXJ7IEH0EBuMxnpr
         lxDxxeQc9Fc3H2QLBnYJmL+K6EHRXdvDEBbUuTuspmwQFYXOKoODQqPqvoeo3uHKSVXr
         zgbg==
X-Forwarded-Encrypted: i=2; AJvYcCUX1rPHU74a0Olpin80dGgTWyJkixKI2hImZvrnvbnmnfp4Q5XBcaJP25gTJBumPZPwMQ0KyKa7GvAzVytbxSsicD4IxrHu+wRE
X-Gm-Message-State: AOJu0YxRTUwwvYaliOzQka6hR8cBKATxtQCIaKmlVdMDCANl9otsNVTM
	9E0887nF1MVr1w9CJ077JwAP4RFb7BpFfeOOJ6k4Qp7FmhcuNj7C8r91DZjI68A=
X-Google-Smtp-Source: AGHT+IF6o56Qzy4KM9au1OCPWRMMtTlCRaxaMkoTZp9+8gA71CX8kCxaSQP2eF61zPQYMwK/Am7Gcw==
X-Received: by 2002:a05:6102:3713:b0:48f:dec0:b6bf with SMTP id ada2fe7eead31-490320f7414mr22531184137.4.1721015159873;
        Sun, 14 Jul 2024 20:45:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ec6:0:b0:6b4:ff5f:6a65 with SMTP id 6a1803df08f44-6b74b440993ls90279646d6.2.-pod-prod-05-us;
 Sun, 14 Jul 2024 20:45:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUnwcLjICciC3D+YughSHtwW+HFQkjDk/asIOTc0z3kN2RBTnJg0jUt4ORsiBS8NPBscx2Hc55L9Nj8i6MCVavwM1D3gE00R2Lx4Rht
X-Received: by 2002:a05:6102:1522:b0:48f:dd17:ee4e with SMTP id ada2fe7eead31-4903221f157mr23561591137.32.1721015158899;
        Sun, 14 Jul 2024 20:45:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721015158; cv=none;
        d=google.com; s=arc-20160816;
        b=p44fA+FxabSU3Oo01RCQ1PBueVOu1f8Mx3Be8LKhIiK/vdtmYtxUXReE7JGuKuC41G
         ADdmFp1OY5Ap/dtgfQPV2p369XYaOJ5Hply7azh5E08KHkqC0aIMZsBs9MNbcuR2yMDS
         vasqbPD9Y1Oy3YzoIcp84EcjAKeZWWMM6BI5MZDqOVQVBk5B5ncXINcpJd6ihvrBm9pc
         +GjF5OgtdU1olH4Qa1MSqCiW+eiKwHBWdEijMmp1qrKwb113KTz3EUI6HFUx5URQ0Qh5
         ihrk009xcaFXktEkRzuikHVvb1yoUQzTTGKRi7TzCRy6bPM2Lk1DEA9MG3FVpz2uJLOu
         +J6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=mMMl/HykR17VXz5ryvFpOu50MhSTyBSsg21ERSGiv7I=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=pXlFOn56WDUih9Z+GmaA/xArRMs+luumaOIk0wxFVbhlggn3yRlDAmu5zlkn/Fwe8M
         GhsbWhjdlVyJFWjOda3cMw9Ij7VXRbL4CJ4Q/uK+nSm80OAfzfE/uaDxO41U6fgnbORr
         AhFxEpRVOPfj5g7MuM7yUg7N5JJIG7dWDRBobdGSwFQYoEV9Y89cX+4tS7bSBGYrqo6Z
         dlSDR26H6jch5h1vlsbjOu0R38P5rpWQSaVH3zN/z0l+MbmJPk5O8rGrnVj7JlStGMxm
         mB3o0G/AL6Sm1R/z+Uirou82K2OqIEDAAJVbdWCPuMIxy4o/m15SqpbqZWszTL8EfUw7
         6MOQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b806cafsi43026571cf.495.2024.07.14.20.45.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jul 2024 20:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-629-sKm_kncEPUm_QMGWcmFYnw-1; Sun,
 14 Jul 2024 23:45:57 -0400
X-MC-Unique: sKm_kncEPUm_QMGWcmFYnw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5EE3019560BF
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 03:45:56 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4E164300018E; Mon, 15 Jul 2024 03:45:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4BBD1300018D
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 03:45:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C4DF519560B1
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 03:45:55 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-277-UTgYXbuXOYutlVfWK1WxDg-1; Sun,
 14 Jul 2024 23:45:53 -0400
X-MC-Unique: UTgYXbuXOYutlVfWK1WxDg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 9571940508
	for <blinux-list@redhat.com>; Sun, 14 Jul 2024 23:45:52 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 585E71001C1; Sun, 14 Jul 2024 23:45:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 56DF010007F
	for <blinux-list@redhat.com>; Sun, 14 Jul 2024 23:45:52 -0400 (EDT)
Date: Sun, 14 Jul 2024 23:45:52 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: how many Linux machines do you run?
Message-ID: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Hi all,
  many times I have shared that my entire Linux experience is tied to shell 
services.  Dreamhost for my  employer, shellworld for  both my personal 
site, and an account with them.
Because shellworld is still refusing to incorporate current email demands 
for ptr records  for host names, I am wondering how others manage their 
Linux experience.
If Your host your own email, have the equal of a Linux shell with several 
browsers and convert tools and so forth.
Do you use a single dedicated computer,  different hard drives, external 
USB drives, or partitions of a large drive?
Aside from educating me, perhaps learning how uniquely one can run Linux 
might help others new to the concept.
So, how does your Linux garden grow?
Kare


