Return-Path: <blinux-list+bncBCVPTHE7K4IKRTWMW4DBUBBU26E5C@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D82984C74
	for <lists+blinux-list@lfdr.de>; Tue, 24 Sep 2024 22:55:06 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-458373c736fsf107185581cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 24 Sep 2024 13:55:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727211305; cv=pass;
        d=google.com; s=arc-20240605;
        b=dkp/Jgn8htfzY4eRVehnbhNfjUgaR3drkTOtP+mhxKa9HcUIa68IT8Eas7NM5bNNe/
         /ZperUgf58lcgL5wHYW/eV+t1j5SOnyvbgGnKIaAUdpau+LXvcWGK9Xv/1nWQ7Edl53r
         AfjkRzqmUQqm06GxieB2oFG9FBWa0Phgu7wk9Sw3jHCtxulyFxr9ldh3Guvud6cvXzo0
         JrYVxSWgPGNJTug+n8079Tke+/eZBKNs6GSKLMTvqYN6zjQDg6hpfZbm+B58QlQnBQYa
         j8rONJZ8xNws08n1el9D7DG/seKBNRlbIjHEnGvUr9+U4c++w5BP+GFyXeYwcqXKxYnf
         RpKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=5MiyORCUFCcOdOSOE/hjn1qD3m6IbJjsJTbOKijAy90=;
        fh=M3CPVR3F1zunmaZ1nhf1D2ZO4ZFEmWGSMdF738861wY=;
        b=X9t0uLaSXTR3ZSwaK+G6BNVvn7AjJUAkmPJ8OQBdB837aVgK170SXfjDxCG1ytxn79
         Ei7Q8x8y/uRNRrAl8HKGmhZIE4ZZQ+XsSM4XOgxoHoLBuvBM75pESCTBp6la/2stXjvk
         YBQBNZSCKa+q+fazcVAxIVIPOLJGVNC1gMfbrIC9rS6ZToEyeUpODYapVwJGzYUzH2Lk
         5ATd2wfloni1849tlxJzz/Psc0X7twJwvOms3MidhrINdYVXKSiW89U9YTtqns/qIHbh
         LX1e9BNDK5WIh7povYtEUl+l3dssOm961RwXYHos32wh3gp0iCSdEOsazY+GkOimiaVg
         96XA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727211305; x=1727816105;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5MiyORCUFCcOdOSOE/hjn1qD3m6IbJjsJTbOKijAy90=;
        b=NXV7gNX+OPQeWWU9hHnEQ325MG4CJExpj1hqrpR04K7YuFk5hTLwGv+dWicoC9IQ7H
         Ed+eXPvXopFxHrA93PwAWo0x3x3zZaM3hVWOyNcSG5cyt56pvrigqUcbOjhgwlOwIlIg
         IYLPr71NdnH1sr3VwyBxPZqRrmgrCdX6cgtG966qaf3Xxie4ScdA3ME+yNSVY00pbms3
         7M94a2f09p0MikllQbh+lbDSox10bCCNjbhAUJfbBPhVk6sx+tP9JQgX3654ZbHVZQ7T
         ulArwhegiCmCqngrqBG/6He+4SQUcfhRJml4Nf5TbxQxNEprDTpgHZQzlGQSaS2SnODE
         6MRQ==
X-Forwarded-Encrypted: i=2; AJvYcCWhk/IAA2eTRq+S7QcKW85DbGD1Q9BlWhMdzf5FiZ8PvGlS1bIF4yJn1t5rfHwQqZE0q9YC/w==@lfdr.de
X-Gm-Message-State: AOJu0YzpF8HUujYA5fqvTvPXP/rhN87FSQTe40ckqGu45b7vqvmseJ+w
	odVRMUgYU/OIteX06HF9XqEiiixurOyNPEgY4FqdeuZcUcIE9vc4GCwQH38BYyE=
X-Google-Smtp-Source: AGHT+IH2ClHNxvh9UKTBfEpT0kv0hxUDwQn3xQRXmGGFUrtsddrFp+KivqfWmaZeko9xdZQIuQXwxw==
X-Received: by 2002:a05:622a:5b95:b0:458:53b3:7a01 with SMTP id d75a77b69052e-45b5dee3b90mr8546311cf.18.1727211304773;
        Tue, 24 Sep 2024 13:55:04 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:203:b0:458:2dcf:c764 with SMTP id
 d75a77b69052e-45b166bd515ls101351781cf.2.-pod-prod-03-us; Tue, 24 Sep 2024
 13:55:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUuyVSQlrUV7/wjLRaE1Wr9dTgk2yAE/aB1urc2N3+O2wb6ZnfDmZ7bgr0Z38ni0cSogax2GFLZaTVMQg==@gapps.redhat.com
X-Received: by 2002:a05:622a:15c6:b0:457:d1e9:fc1c with SMTP id d75a77b69052e-45b5e030cbamr7452731cf.42.1727211303712;
        Tue, 24 Sep 2024 13:55:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727211303; cv=none;
        d=google.com; s=arc-20240605;
        b=CWhMRgfzTSn5PN1UrX1whueH+bPV6etvRhJoJYaltb2jd/OEcCMD84z9dG2b+HqOAR
         YLvM2tWFfQVFSHyoeEDjwsKS4zZbc2AAAODWEsYeuRRSEK91gaz7ra/juazKAkAY1GRn
         7DNvUoy61Wr9vmy4jmlJ5w21rwN9QkFy+TlanY7F/4XD8lweKdP8kF51MFRH3t2OPt2k
         MqhgNL8cn8NND40nOMYr09YAj9ZK9uzdxhLX89lQ6fpxZLR9MuvzuLUPPZnAn1kCV4A8
         RTgbueGBOffr412hH7W64AGdrxAWA+s0Q9+CPW+3Kc1r443bf+kK9UTJ29ncuBzs5TpL
         3ung==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=5MiyORCUFCcOdOSOE/hjn1qD3m6IbJjsJTbOKijAy90=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QnYTTHJLAdZuUt38EDHaI8D6Hj92Qx7uShZPmgjaTK45QRtgCxbCvuwZzPNU45AeaL
         t8MpWnDKxriz+EAr6h9y9/KnBBYyEA8G0UYPAYljUkmuWXFEidfLA/i+qch59wEb7WkU
         j3M56EqZ83F+WLPZReEcAtXU5HGVAqkSKpu1PFdsaMF5GPoCDPlOLcc7pRJX0e2bYsgO
         Ehzs4F4G/75kfyhFEaMx8tCi0DLdT4RcsGZT3QPqse8BLQgIqHTFDfQtljMZrI3mP1hw
         wvdNZI7AoiO8Ye1swTFV3qCFdXJ7Sn2umDtKK7QjYawymZYt6rmJ/xOuan7Hmdxxi+YK
         x5lQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-45b5274ba50si22827821cf.707.2024.09.24.13.55.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 13:55:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-504-jbzB7WI2N_uqbYbwJ1jAWA-1; Tue,
 24 Sep 2024 16:55:02 -0400
X-MC-Unique: jbzB7WI2N_uqbYbwJ1jAWA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5B493196C40A
	for <blinux-list@gapps.redhat.com>; Tue, 24 Sep 2024 20:55:01 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 56CBD1956094; Tue, 24 Sep 2024 20:55:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 542B2195608A
	for <blinux-list@redhat.com>; Tue, 24 Sep 2024 20:55:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A099C193EF79
	for <blinux-list@redhat.com>; Tue, 24 Sep 2024 20:55:00 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-50-QG1FRKiXNViY04DuthfQ_A-1; Tue,
 24 Sep 2024 16:54:58 -0400
X-MC-Unique: QG1FRKiXNViY04DuthfQ_A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8FE2F40508
	for <blinux-list@redhat.com>; Tue, 24 Sep 2024 16:54:57 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 27EE71001C1; Tue, 24 Sep 2024 16:54:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 26198100080
	for <blinux-list@redhat.com>; Tue, 24 Sep 2024 16:54:58 -0400 (EDT)
Date: Tue, 24 Sep 2024 16:54:58 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: a question  for didier?
Message-ID: <Pine.LNX.4.64.2409241651200.870459@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

Hi Didier,
I am interested in a couple of points you have made about coconut and other 
Linux distros built a bit more tightly for accessibility.
Challenge is that my questions are not likely to interest the list, and 
shellworld.net to the best of my awareness, might not have updated their 
ptr record yet, meaning writing you directly from here will likely bounce.
May I write you from my office email instead?
Thanks,
Karen Lewellen


