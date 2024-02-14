Return-Path: <blinux-list+bncBCVPTHE7K4IJ7RVQVYDBUBAVDU6EG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F00D85416D
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 03:19:13 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-42da7d2023bsf23809521cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 18:19:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707877152; cv=pass;
        d=google.com; s=arc-20160816;
        b=UKRTwHq/ishlmVoqjmMftYkKpsEv/9Nv2OwUPK9px4S6YoyuGIjSyg1ojOkMJwqhFm
         x3HTRMOVyIfutuIcJLA5z3rZxKXzxRP+ja+CQp3WmLbh8Tg0YzFuC/2H+QQyD5wbzm5H
         G7oHbNDSSvThTVxMj8pbKIwgcupG01BTqIT4CDmr4tkpMmp92Yg0mLoXgDvlLdGdDZA9
         o/jbMHVFV1KOnxmpk5BZqFOHQPdPXwTTKkS7nZ4aaYCwew0qOkxRjwfqucB0a/y8XUZn
         v72TcIPZ1mfQwCosTmt7J9nwSWUWaOhggEfiIVzyjiUq14/X3fwTkojpEhD2y27Pr5l8
         05LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=tUfV+hGLiwSAiO1t6BKjREGyxbsLIf0k/bdWkWxEAAo=;
        fh=gBdWXyMtk8Y7Vo+ACi+WB3c8F3E76eSSt6+S9Y1vSLg=;
        b=wxs4+OaonnVioeKKOWfbBSue5IlXYdmji9YAhnocnZq3NAcFdqsMUGYrrI1NSv4/Mi
         1BzlkNCWUmKoqeo+RWKmRc/aENCGE3H9s/mL3+AwcJOOTZY3xevvBmnrFTr4cUXLnAod
         jTaT91s8ss1f6M2m3pg0tmnkNxjhnGCi1mF8w16DFi8XJJDISo3M2rYnx2vbGniI2Rd6
         TK0dJbdLELLKLY2uJUyp9Mca7jqJWuC4TmDODxO7lzHX0ql0jwygNrvoc3llM5UjrHgh
         67UfOBDM5XTQT9YrSjhXDc4AiqOrlUfRODoYADgcmBvRkLFQwJ9rlQ9yPMGIyu/TcEjG
         qNxw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707877152; x=1708481952;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tUfV+hGLiwSAiO1t6BKjREGyxbsLIf0k/bdWkWxEAAo=;
        b=KLuDwfymSdKvA7YBqTF5tQunXlr0dGPomxsNzP4iErXsUnOFDFYQzEIBUahOixnQaK
         D3cy8Zi2E7LyimIdmCqRsn2cWHKI0Fyf1QTCr8wpuNbMrnQMNsIAWAtRb43yMyJuOulG
         CQGwNoO7f2gVY+bEFEK6ZrYpuu+i/06AwvmEIvKi3wxvvSDn4Cbfuvwz6cCS8HkxNLEY
         RZHHC8dcioc53eB6PeqUqk1I2xLLzQDiGCxmONYYOurmGDPOJegzh6VqZn0TkmBRTS09
         +ROZsFMaeX16qFf8Bao8qXiBHDrO29jniws7d42I2TYtPESUQBa2aP/K8Jxr4Xm420QY
         1ZDA==
X-Forwarded-Encrypted: i=2; AJvYcCUxCFZpyjXQe9nESwah2XcJ1vCeK4Iy+x4bGX7FZSdy5PX5aSKbwrvfDdSQJyHnUW9bpI7DO8rW2ANsKlcyOV8q8mRTGKMHxLR5
X-Gm-Message-State: AOJu0YwZ2ggzzX6NNRrEtVsMmuZgLYIs/8pBb456oOPMZmbXU6Ch+iEP
	o0WCp7DJCouaLytgXH00jtB/jFynddU3lZpFTeu3TnFqeaGAQhcW4ePxLkBhcXI=
X-Google-Smtp-Source: AGHT+IHx+Uq5ekycKxxpQ05LjZs3FSz6tCE3eermbbxTHkhdTRgRI1J563HC6+l4H172qySENQS8wg==
X-Received: by 2002:a05:622a:c3:b0:42c:dcca:5bf6 with SMTP id p3-20020a05622a00c300b0042cdcca5bf6mr1288111qtw.13.1707877151616;
        Tue, 13 Feb 2024 18:19:11 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:348:b0:42d:b569:2f20 with SMTP id
 r8-20020a05622a034800b0042db5692f20ls836520qtw.0.-pod-prod-08-us; Tue, 13 Feb
 2024 18:19:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUWeH6Bu14CkjpALlBI7xS7gKKAPdNEGueHNyF4UziT7Awfw61g/2iCp1AEYZh1Uq3kQExyixxWdg4gxtxupGw/ix3sTqWb17M0OQm8
X-Received: by 2002:ac8:7f48:0:b0:42c:715d:a2dd with SMTP id g8-20020ac87f48000000b0042c715da2ddmr1301376qtk.23.1707877150783;
        Tue, 13 Feb 2024 18:19:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707877150; cv=none;
        d=google.com; s=arc-20160816;
        b=X1udkQbImc4zeU1sh28ei8WUqwqEvY9zSL+yWmUhdb/yCAy/uE4mvvBLJ0eWaCShXe
         YJvVCxbdNAtfU6DbHZvp4Ss0gcjbW9ZCmNY+c+nnqoB6vocZgTKRZ4+ZRfd++HwleKPo
         SAiORTVqAlo6XHe8l78v6WDbUDSYKuQsmjpz61XtnRKH5oLXsykXnZ+OhzfYZ5n35b25
         0o6TrrK3BCUflgq7dFI3Fv3fTIHjtFsN50lh9wL3QN9SiatJGPeb+J5cuuOtxT2qPGbf
         s7VODnwM9Zv9Qi/iG+0TCRisEMRvz2gm3Sh7rfFbN4eROBifAa+C55p9GtHqpluUdiQ3
         WZ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=tUfV+hGLiwSAiO1t6BKjREGyxbsLIf0k/bdWkWxEAAo=;
        fh=Br4WhFp21inpnLNAxCKlm19+uRhopis9pbix+uui6H8=;
        b=wB7PcIE2vvLKvo+JQQHxDb51qFo20ji5oX8mZol1dTU7FsRSRnh92lUmP2+Uq/dZ8w
         EqtPHIFsF2GriWTKl/cnvKXtwT7BmIYWGW6b6etKodGvTuDKZOcZhtQ7RBeAkm2IWpeM
         jhE1G8AF0YZufn6U6N0vWbxYG9rjXZKcCC4jJzEIkCJZ6oLgpTNKeWAQBks+wf1mTL+O
         hxFTbickBCU7QKYyzjOxEo4QpMmm32cfCAvp2r0Lq288pulvYbD66I6INK2452RNyW5i
         oPBxjOGN1yVmbkYvJS9ZYV0zjYK3WWmLT9jq5mxAJL81MqMqO4/D1QAJgLqP/7J9joO2
         DzAA==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Forwarded-Encrypted: i=1; AJvYcCUu+h5waYNhhcdR1FM45TVdo8DDvD0SGjeulkkgmaNt0VxFBxO5zU225HE25z8eJJV+f9lIRhTcKOHFbdVlhee5hahYkEg+8oAMrx2A
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id k24-20020ac86058000000b0042c123b1b9dsi4064378qtm.135.2024.02.13.18.19.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 18:19:10 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-528-o3YlPFs0PsGaPnIMIu4aJQ-1; Tue, 13 Feb 2024 21:19:08 -0500
X-MC-Unique: o3YlPFs0PsGaPnIMIu4aJQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE060828CE2
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 02:19:08 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id AA5E11C05E0F; Wed, 14 Feb 2024 02:19:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70EAB1C060B1
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 02:19:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23B158350E1
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 02:19:08 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-32-K6RWvMjbNyqvm7S6yl8_Lw-1; Tue,
 13 Feb 2024 21:19:06 -0500
X-MC-Unique: K6RWvMjbNyqvm7S6yl8_Lw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 732B240508
	for <blinux-list@redhat.com>; Tue, 13 Feb 2024 21:19:05 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 380101001AD; Tue, 13 Feb 2024 21:19:05 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 36DFB1000B6
	for <blinux-list@redhat.com>; Tue, 13 Feb 2024 21:19:05 -0500 (EST)
Date: Tue, 13 Feb 2024 21:19:05 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: ssh  command line question?
Message-ID: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
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

Hi all,
Will aim to keep this simple.
is there an option with ssh from the command line that allows you to 
update new keys for the known host list?
I ssh into my dreamhost office workspace from shellworld, as in
ssh email@email.thingy.
I provide the password, reaching the dreamhost shell structure for the 
domains they host  on behalf of my employer.
dreamhost moved our services to a new server, changing our ip address, not 
an issue, but also changing the fingertip keys <hope that is the correct 
term, previously saved  for my access from shellworld..who seems to use a 
strict  matching process of some kind.
My hope? is that there is an option that tells ssh to update the 
identifiers  used for known hosts?

Thanks,
Kare


