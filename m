Return-Path: <blinux-list+bncBDYPVTOXSQEBBEMHZO2AMGQEUMK4NOI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 352949306E4
	for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 20:12:36 +0200 (CEST)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-8103c942f4dsf1070895241.2
        for <lists+blinux-list@lfdr.de>; Sat, 13 Jul 2024 11:12:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720894355; cv=pass;
        d=google.com; s=arc-20160816;
        b=uhs6UoHSiTIK6s4sSnYRajOxEavKPI0EM7AfDvgehfnFlwf7QIRY3cjfMWUq/K7Avv
         0+THqfc7A7Q4uE8elQOE2ihGMfC/wrCrQ4Zc1wTjy1pPvG5fyESHdR+28cMTa7K1ZvJV
         i7avdT71JJdNDeZCWZheVqKxcff5VEFYOD+cb0fL898E2x/Ns8U+S8tW8t22IJ0CSmIW
         cop3ZzpzplvoxMmEsioGypFENN+LSaooLmc7qUnjHPt5scEjnUjIZNlOVKRUFGTCxYP9
         muMWG94rX4ahhaG90ewcbfkg23A6rQGvZtcpot+q1plCTlFbJYQbpiPvosvzsSf/ZaTs
         Ogjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=86hE6/ayL0wvCaFfx2wbg9YqkbcGHN+d4eY+kQAUqmU=;
        fh=k6yCZQUCi4PqKNBCyT1hiJ8s7LOdSTr3BtBB7fDRMPI=;
        b=sv0mpQ0c1WasL1blEjoPz8hRx3SjVPi48YYlEjc5Hu7NEnjxnuXBXovjA/m70pNi8V
         3Ej1MBDexCSP93DU76xQh5gNKgMDJVh+fb5NGWQBd8N3s7NDGe0OEZOSjkMBhbBKTnwI
         wH4ecIMAigO3a175kxNT8mJU2ifVz4NEKqoUvHCfY5d/tR0Jt+emr7eZsQaI4dmtVbLl
         iq6TKJPt+8jBd3FS9HQqEST8ju1a7Tijc8foFCJ2OxHh9pNawd5pelVPtwgCTxh/pbWk
         +JywKuOenz2T780qi6P44guGhFlWP4P3VBF6Bq+Q/cGU5TT7m0ty9A5Oqqv8IAVnpcdp
         yZNg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720894354; x=1721499154;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=86hE6/ayL0wvCaFfx2wbg9YqkbcGHN+d4eY+kQAUqmU=;
        b=JIaD03XPfEdWfK3jaiE1YtHtgiE0MhtyILjTJSshQ9wdUfMBdrdPV55nyBWwkmTvco
         c5vDL/Kpcs6f1Yv7I+5LD2LpPMSqY64nXVO+/Sbb4hT0FZ2YdN53OwVqC8l4Zry4VyY0
         1fob+b2BVrwQ4VZsyGX2kV6YrnESIl8EokPNlXN+s5EiVtC839Rhn0xAGUlQv6Zn2NK5
         k7jH8hJrmOFNkAz2f8FXK2lA3psm+n54Mi4KQ8QH+IyfAAcg4GPFLnCl3gdAiAppDn9I
         vaLwbHES9XylbrfNERKMedbiwDkJ4QrYg9ZeVn/42YZ6qNDRcVo0DOE6OPepduOky/vn
         ps3w==
X-Forwarded-Encrypted: i=2; AJvYcCVLf6m8KAg8kT5Owd7esKOTU2ffesCb7m1bP8IzMho1aAKVkhRx+73fEJX4YmULBR7ita6ZKkSH/GgVmfSQvj0OQvUIzig8wjDO
X-Gm-Message-State: AOJu0YykQHBZRyCpgkdqlb0wUDMO0CjBYRXoofYnoMmsiW5NtpHxY+ia
	CJrDM1J+VcAmPKSy2ObZ/hr0uJXLk7xs7uVIqWNWxhREeBpmqS/AERG6hid8IaY=
X-Google-Smtp-Source: AGHT+IFCnz9widIlO1h7NbtTHlU8ruA/o5XIVKwnrpGo0uB6XOI+ROdgzZ52DfyPEv9ubBdvWwFG2w==
X-Received: by 2002:a05:6102:3912:b0:48f:9608:ac37 with SMTP id ada2fe7eead31-4903213bccfmr18873953137.21.1720894354228;
        Sat, 13 Jul 2024 11:12:34 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7183:0:b0:447:ca9a:34f2 with SMTP id d75a77b69052e-44d0839134als37834151cf.2.-pod-prod-05-us;
 Sat, 13 Jul 2024 11:12:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWc5Ihr0RBwPYyA2OvvgD0IweQOc3t1aSZ0xFqWBZ/64Cp/havdkIN0Po1PDNAoe4qduxT/pOSzYxA5CUNv+5ldf7/gr7eXJMjb+Ei4
X-Received: by 2002:a05:620a:2981:b0:79e:f878:2654 with SMTP id af79cd13be357-79f19a5040bmr1925782285a.41.1720894353016;
        Sat, 13 Jul 2024 11:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720894353; cv=none;
        d=google.com; s=arc-20160816;
        b=v8XIbg/Vs+twk5pnPMxe300nJFP8YLkGC8L5sIV5IwVJ3eLji6qHc4OxRklaUkt0vS
         RYCQrM3/lHebI9HlV1TaKJotnTRYd+7cArjD7GgygPjxd5q3dW8Y1QfR/dSgoBiM5dA/
         QeUCV72eUqUzzMj2o0x0DuvLWzi6S2DhL9XZ7nb/82LjcWmCxBaTRdRElm2jHqS8IzKh
         YJ/Sqnk7MroH2f3hOEu3Te8f67Ukfpww/2t08V5D+v290CiQgLmkBMOnZgxi28vUck/D
         p0OEe3apI/6c94le0+TKWo87DWXOT//6lV++QVz7L2pH2CNH2WbllKNtVhtOzpOCUoKH
         cs1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=cWMR/HA/J5/vfcF8G5RkDrXc2tPD6xqEGEzV19IQ96g=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=YcTjYFgT6Lp6IQ/T0so+hwizgenPWFB/BZmbGtBIXGHPrgAeP9LmkgVD9IvQWimtCc
         N+mOfforJxvBt4pgY46frs3nNEvqMi/U/rG0tNtBZM+/Bf2s24fj6knGu+a5g+hdHxoZ
         Kzr+VCWcbOqMqKwKR6YVM8uyE7gwz7P3vzkA5ApcZKnXFn4ikqvnLxfFdEpAGhiAge1J
         L7YhLaLOP09ivbYrGGUQjuxJlm4wvQiziBQqkQvz5wT1o9YDawjvdaDT6C5e3w8Hjh+J
         DF/kWbE/G8CtFrS5gwjbz9i+8CwGIgTRH4gBLxDN6cpVXPEW7V2vzgrkTovr2jdgteaw
         smUg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c49bcasi171550885a.266.2024.07.13.11.12.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jul 2024 11:12:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-461-Ica2HmLpMKS-5zR19rOEDg-1; Sat,
 13 Jul 2024 14:12:31 -0400
X-MC-Unique: Ica2HmLpMKS-5zR19rOEDg-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E19A619560AA
	for <blinux-list@gapps.redhat.com>; Sat, 13 Jul 2024 18:12:30 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B69B3195606C; Sat, 13 Jul 2024 18:12:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B42E91956066
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 18:12:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 382EE1944D30
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 18:12:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-647-HSx1lLQIPrO4jGs-uYI2Lg-1; Sat,
 13 Jul 2024 14:12:27 -0400
X-MC-Unique: HSx1lLQIPrO4jGs-uYI2Lg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WLxQ33jcPz4XPs
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 14:12:27 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WLxQ33ZFLzcbc; Sat, 13 Jul 2024 14:12:27 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WLxQ33X3PzcbV
	for <blinux-list@redhat.com>; Sat, 13 Jul 2024 14:12:27 -0400 (EDT)
Date: Sat, 13 Jul 2024 14:12:27 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: poor internet service makes torrents necessary
Message-ID: <528a39af-2c93-928d-655f-bc13158ac97d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
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

For the record, the accessible coconut torrent is:

http://cocofrix.com/includes/torrent/Accessible-Coconut-16.04.26.torrent



-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

