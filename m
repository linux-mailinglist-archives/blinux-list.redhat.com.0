Return-Path: <blinux-list+bncBCVPTHE7K4INLO75WADBUBE2MRE4U@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3928A7BD6
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 07:27:50 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-69b62a06757sf51570526d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 22:27:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713331670; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nv5usPFRPV3pGldG4XtvuZ8740+5/xcWOZTCBuoF8/L7Zz83YwdXvH3vtf9ch65w+b
         y7b4bURvDhr5XYqBD98SW/BZbpYF1yZ2YPeAiWMnQmNqW0f98GthIUWdav6RBpoDjsEv
         E26o0Jzdl1H4HQ1lAieN6EzWOyG0IpbN1pUPBxvqLxNgoAtGmoI88ZsFPwTlG7Jd5TRX
         Li6oGc07kkm4HE8bXmtjNpMpEu6np956CzMRzI3QKqvm4wEHDInR6qz+sOgs2rabOaF6
         pDJNe3HJUBVsIR43brxqLC/VZqVYC1mTM7HE90VT+tzvm8rfqDRhRLAEJrxqAEFnZsAS
         1waw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=6N+k/io9IIO3dAPTavsgEHm1QRlMuXf24eVmCjiJHEc=;
        fh=0YtQY0bfgDvNMoft/cUsclsYexyiGOBk97i2j+hbQno=;
        b=q34uu4elKx6lw3CM5S880kdmdy/0ioASz865VjgrSInVWw1ZcQ19AD5oqLeAeDFRrj
         Rkd/6AdLv3wMJBXTnnlYYKLZtkpoXVf+LmfABr52tUD7JrXdB2y4snS1MXubI7fuS1J+
         L6FbDEmB5KiMBAf8gzbU6jibdGnc5+vmV3kCFyrMyy2+99UJ0wPjxdcuX6NPByFW18xy
         oRAWzLu8kvByyzSExRsquFhZ/nEL0r+YWCrYVWr7TH856YcbbZHIA8hKhIovqv3pVduz
         EVQ3vuFP6xVgd/Ch4goRMTMm3MhC2FLZUumsgbUrJUMgGcAyBVFyi2Sfjd2XjMWMAQUq
         gLfw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713331670; x=1713936470;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6N+k/io9IIO3dAPTavsgEHm1QRlMuXf24eVmCjiJHEc=;
        b=gA/6vi9Vw1mf9mi1Eomzxot+h+AJcN3OJuXbit+qb4SaH2RGM/Z5X35jSeE9rVf3Y5
         jIRYByPyftXMs0PHrASyfJYb1PAcs3b30nCQTUNhavQjuV3153GarwxFGa9o6I4JZiO1
         JTeYpu3q9d32t2JpRBmJXhAIMuCEQ0NzdsVpPew7otDFcEWFkfNegEBDqPPgOdOMOSiZ
         TcBjHJ7S8afqZeVzwH1wJaVfZQ1cTxlYvvO5xHsaD6BCvs4bt9CGemHOEw3+mqJYZ6ee
         xSF0uJEskO5+FLYa0JvEJUcCn+mwZmRy84/owFb4o5rqITPyT8TmOxjyrYOeeZ1VjTah
         rhGA==
X-Forwarded-Encrypted: i=2; AJvYcCVkri0G7Ns/VSsouy/xzDLGq8cFFb7sMvZ2M5Mq0+tJ01Hn7Kp+EafAQM1JfbndUcav/JvpvrbIW8V+MNhrgbO6U0ogetrF89uw
X-Gm-Message-State: AOJu0YwKoLKiKPaJwHkMOk68HPG2bZZoJ4OOv2vcJfgcLB/5Rv47R0bZ
	KrOF02rg5e1vBGNm/9f2JoZRPCd0zjGoqKCNWw/2Z+GvId//cvY2KzMTGEROEzE=
X-Google-Smtp-Source: AGHT+IFNGf+YyYdQyQmGYogvrYRVxF+SpgNd7uzboMLz9AnPe/KeMQYQYBje8majbHXH6YDqEK/xrw==
X-Received: by 2002:a0c:cdc8:0:b0:69b:7de2:e5dc with SMTP id a8-20020a0ccdc8000000b0069b7de2e5dcmr7213505qvn.16.1713331669582;
        Tue, 16 Apr 2024 22:27:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4113:b0:69b:7d02:7d91 with SMTP id
 kc19-20020a056214411300b0069b7d027d91ls7400qvb.1.-pod-prod-07-us; Tue, 16 Apr
 2024 22:27:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVdg1Py8ZGMw01xTyrZpel2P0CARnxdXNEF06mbIEnrZIXvtbHBGpl4kSvHv7ldQZxuqp5DY38SBARmMc6592eFEPTGUDCK98qNHmKF
X-Received: by 2002:a05:6214:4113:b0:69b:47da:ab72 with SMTP id kc19-20020a056214411300b0069b47daab72mr19937653qvb.35.1713331668569;
        Tue, 16 Apr 2024 22:27:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713331668; cv=none;
        d=google.com; s=arc-20160816;
        b=vBg0uJ0L1yFuNJluMhHhxO8pFwfhRnNj16N9s3ZWVf0P6lo20k5aG95/9WfwEnCnFv
         gOzFpTXzcMionSqDF+huSAC9P4XRgVCjOTxp8KoV+lTjbuJzioXOnLSDaM7kb4pYBf30
         /8XLl7pIBv60iUHpPK3iUl7gEHMMEvW6wPCQ51dXtCWzjvKmQTpDd2r9bmge54zWxeHu
         tCSsdcVXwXBSIDTc8BpZTLfTOF/Pibr43Y4EODFhRk0Ggt0TTzBZiRljUn6fea09fXF/
         7eipeWQSWaTeAjkdEHY4nAfyZY2+q1W07nU7iH0uV/8YzT2qiveU440GCKOduhzyU5VW
         NW+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=6N+k/io9IIO3dAPTavsgEHm1QRlMuXf24eVmCjiJHEc=;
        fh=FCI8yxPeQnxQyFuVwivojld0UHHoX301fAIXZ9bOs3s=;
        b=BiwIYeqAE4sAkgms1RD9lVtQEQJgvVTInJhdXNc61YBXEYtx1HUFN9DgKz2+9wsJ7r
         GStl+w3UmlbhsY5jwIxouTuWFidSKFdi+wg2jhK/9heuQbRBHfz3cGFQ6r/kbZ0F66BH
         krEOGnIfPGcx+w0v5sHTSCYyaF5jOTrGgx8Xm7ygRWV0uad6zF4D7E3zB0fvr63pqwaY
         19x1YT/kP/aEP30kMT0lRtZ+OtgRnXJBJeNy+BqUWW14ooHx8CNZVk8/EJ/4S02Z4wy8
         UWN2F4Cg14sENH8k2B9FgJ47XxDbjew3CAHjJTPnup3vTEkx+Z3iWo4ZxPxhfDw9vEXz
         Hkmw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id r8-20020a0cf608000000b006993ddfd4a5si13393313qvm.71.2024.04.16.22.27.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 22:27:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-v5kS33WtMf6cDdS08Kahgg-1; Wed,
 17 Apr 2024 01:27:46 -0400
X-MC-Unique: v5kS33WtMf6cDdS08Kahgg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 15A9B28B6AA3
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 05:27:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1268A1C0DD80; Wed, 17 Apr 2024 05:27:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD4531C060A6
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 05:27:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77AE71C07F2C
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 05:27:45 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-46-88GKqU5FNQaa2wdvBrtVkg-1; Wed,
 17 Apr 2024 01:27:43 -0400
X-MC-Unique: 88GKqU5FNQaa2wdvBrtVkg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 2A6DE4050A;
	Wed, 17 Apr 2024 01:27:42 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id DD4CA1001C2; Wed, 17 Apr 2024 01:27:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id DCF72100054;
	Wed, 17 Apr 2024 01:27:41 -0400 (EDT)
Date: Wed, 17 Apr 2024 01:27:41 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
Subject: re: change timezone
In-Reply-To: <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2404170126290.1757988@users.shellworld.net>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com>
 <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com>
 <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

Hi chime,
granted I do not use Linux.
Still, I simply set the clock on my computer when I travel.
Surely there is a basic Linux command for that role?
Karen



On Tue, 16 Apr 2024, Chime Hart wrote:

> You know, many of our mobil phones ajust time-zones as we travel, but this 
> laptop never ajusts.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

