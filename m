Return-Path: <blinux-list+bncBC3NDNGRUAMRBHFJQKZQMGQEL27ZTPQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mail.lfdr.de (Postfix) with ESMTPS id C01678FD308
	for <lists+blinux-list@lfdr.de>; Wed,  5 Jun 2024 18:38:54 +0200 (CEST)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-374a831d289sf25176065ab.3
        for <lists+blinux-list@lfdr.de>; Wed, 05 Jun 2024 09:38:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717605533; cv=pass;
        d=google.com; s=arc-20160816;
        b=zLEVoY2+LJ4dA2zrRN4kzUKkLySiEWbyJqIL3Oj08KRuQfQNZ7tT4h49HnLY7o1uyC
         lFUf/Ct/9Kq2eraviyBC7wyxVnCKLg3noQOu0JvCpBU552l96ycWF9GvL2wc08GbXtm3
         FbUClG1f3qE9n+NKVHUpveNx5jQfz1vexAKXFnk7EqSDhNEi1w+WA9I/DGgb+mc3WXzl
         Qfy6g+oWg5/cy3gGDq09OHvt80B39hgloVUvkOlQVto/AJvWGmI9rP4aA8CCqWMVssGY
         e+1fYG/Vt1XeTrswm35t5ounXLBdGcM6a+2ENh3EsHt1n6q53DE9skXJM7F+G7qDpuyV
         uj8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=z9De+zDWYHKCkL87DbK968mGgfYVcOA2D7MT4rZFtnM=;
        fh=Enk2gWAa6s5Fbj8/xjxnwVVoiZfoeoeSUeWQBqEysdk=;
        b=iwKsbt42BcaQqBhFArxisLUv2nPbXedSYzztcxgA6uQrIt3FHPdOPWdOLyrUKqB0he
         Q5IhD2Wsay/EKmUHMQ3HVpjc5MT8A1gx/CR1o+M61VoqgUVRQfZUBG/Rm3PLAbinArQw
         Fxg4yU13citxhwO3HqfeE8B708+lLgTmawotcP5fONqmdn8aTqOKQYLDb8ilJbURe3Ci
         YxWeFJvzDEy1YvQ2XwDEU6K4UrByRRPIaaNZU6WkDzMhIV1hrgYRx2sGOJMrk6pa+BX1
         +1f8E36MhlImgq8HdmAo4jV2vWzcXYUzT869HBNlq9s9yJDbXWPOfW0fsx8m4NhIjPuO
         sKdA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.149 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717605533; x=1718210333;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z9De+zDWYHKCkL87DbK968mGgfYVcOA2D7MT4rZFtnM=;
        b=RMQD1GZ+aXSiiNwU7Acjf029fwKxHbEY7MKOppQZmYo0YPbhPW8yg4Xcx9Z1msnDLP
         6t/d/7LO9AJvWnbbnS7OaEODynKl5rhme6aa/SCP785MLXBtgPkdl3+HQ74Qk/wbSn9U
         jk/PXoHpVH9DHHNdUY8hwQ6Wlh7ZTfaVEcKumOv5DrujfKkWJmrFh212LUEX+vYKeHx8
         D5TnOCTJOPg7fQykbHJoZ1UntNm6TpA98OU2YR3MDJFuzns//vODTUv2jMvLai1EPnJm
         90Yqh7ZfUt5RdZDncbOGNdlci/4zUQwUMFqoqeNwjL7v2u9uYbSVkrZI3pgchAJc6mtY
         0PIw==
X-Forwarded-Encrypted: i=2; AJvYcCVpyZPiuAcJPd0LI+YmKJQ46yJIghIjzeaBCYRkXom3capD4IDPnwLAIBwPuprcvrpDHIwBGa858e20UmkmRG4NdISxiDcdpvor
X-Gm-Message-State: AOJu0YwWa0udKDmj2yOsxsyYL7A8/y48AzREs5KMagHxYcUfkivqpHCd
	JptWDcIhmEVIYOnqZ52qA/lacNwJE3eWa8yoLkUpD1TUeKP/WXqJtc6Rs3e+y4s=
X-Google-Smtp-Source: AGHT+IHtg9W8+xmH0Ayh+Far8TPS96UONHPcfDjtohX58SqmvqmtC5hWkU2SZtLkAlbbQLJ+VHPKpw==
X-Received: by 2002:a05:6e02:20ed:b0:374:57d0:1f33 with SMTP id e9e14a558f8ab-374b1f59450mr30874795ab.27.1717605533308;
        Wed, 05 Jun 2024 09:38:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6e02:1909:b0:374:88c6:3849 with SMTP id
 e9e14a558f8ab-374a907e885ls5758765ab.0.-pod-prod-02-us; Wed, 05 Jun 2024
 09:38:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWc5SjeE/LFlrnemdOHvz94OkS6lbi0yWQNGDCiC6f8ueGaGdHMwqQy943AN0XA3UIwjBbyfhHdzq1fInl3Uvrnw7UjV9NuCKeK3Jt8
X-Received: by 2002:a05:6e02:1d8e:b0:374:a9be:d60b with SMTP id e9e14a558f8ab-374b1f404c0mr34097655ab.21.1717605532161;
        Wed, 05 Jun 2024 09:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717605532; cv=none;
        d=google.com; s=arc-20160816;
        b=Cs27AkQhnn1C4lmpJb713VIwwSKIXBRTH8NW2yiVI/B7aPm1JoGbTemeib31LWGeKp
         WCFAMLNmOEhVzKcxxpLuU4yRf74kiqXj7aMAfc36Fiudbzfs2TigMpCwkpt5Hq7aZbxz
         Y86QwxVdyxR8+nXTFvxg6Ux5hL7tTxlNf0Q3FriDq12omAT6ezc4vjOJo3WqoP2WCkCB
         OqlrsKI3lC/QX1redF/TM2woRQW1dyYq4hR3F7Uy6sU9BUWEPdV0JVRzREW5iPfvxfpj
         H6peL9p9sDo0whfPAWKbVUZGSQBmcChe/WOlNtSuEv7ukdkJXYv2OMwB1UrKEcf7rNwN
         m7/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=zmxXpJ7tvYqBVkER3KaZTPnUg4EjWVm7fkOVimQwfrc=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=IUOzI4CA8Ns0meSBVFBJ112+7nZSOeQwOsMsdZs/ZYqRci5B+r2f2cWaiRoY5TIVBq
         AepY63FE4jxYRrSSS0Ve01ts+oV0p0lcV9GIa2y10cKg9KYkQdtJ9LbFSLRQ6VS+GnFS
         DIiewzd33XEbd216ptdT+3D6hhMsuAW4YU8PIEAAhWnoSuh7zdQr1DnZOUn56r1AWyQi
         QlWhQSC0nLQXQAhZ8FBpdL4xPLSmcQAE2iuYIuRGLXMVTa8/2MOPJTMa6yvOLEqxwPWE
         0USxDj7My9wLxmjm0CrhAOQqh8LyW9gh6KCXNRCzu6fkdnl2ILETUwSr+flUACfFVver
         l0qA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.149 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-795149eaafasi528195685a.228.2024.06.05.09.38.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.149 as permitted sender) client-ip=64.147.123.149;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-392-EhH7WbIeM1eDvwxxVzlCnQ-1; Wed,
 05 Jun 2024 12:38:50 -0400
X-MC-Unique: EhH7WbIeM1eDvwxxVzlCnQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 91FC11955BDA
	for <blinux-list@gapps.redhat.com>; Wed,  5 Jun 2024 16:38:49 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8391319560A3; Wed,  5 Jun 2024 16:38:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8112319560A2
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 16:38:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0712E195E91B
	for <blinux-list@redhat.com>; Wed,  5 Jun 2024 16:38:49 +0000 (UTC)
Received: from wfout6-smtp.messagingengine.com
 (wfout6-smtp.messagingengine.com [64.147.123.149]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-249-xBY4is5zO0eFIcceSFMsSA-1; Wed, 05 Jun 2024 12:38:46 -0400
X-MC-Unique: xBY4is5zO0eFIcceSFMsSA-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.west.internal (Postfix) with ESMTP id D02301C000ED;
	Wed,  5 Jun 2024 12:38:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 05 Jun 2024 12:38:45 -0400
X-ME-Sender: <xms:lJRgZpL5XT-J3sb-lkSkff0d6szIhb7TsHZreyvXS9cBEf47MY53sg>
    <xme:lJRgZlKLyl9zIFH0SnPDjUQzeY_qzgYAY5AzAN4uHx24R-8DUrJ3IfTorCA8vhJVD
    5CZlFFBPQV9Zz-l1iY>
X-ME-Received: <xmr:lJRgZhtWYUU4Agj2H3y8liYbFWJKUisL_H0PF0WAa8s__BI1YEOPbQpDA5eO3YaUTllJxQg-2c8istoNuiJD2c2O5Pirv92vfjk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeliedguddtgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:lJRgZqZXlQ05zxNI1fHC5o3yduPbAhCEAM8PYyWokd_tk0mkmVoC5g>
    <xmx:lJRgZgY6ofL2wAqBAn93PnLuithucl8tG5ACXSFJQr0WZx3ZmxaiWw>
    <xmx:lJRgZuC0NVs2w-BX6h5ppjVlf_SVpclHhe-m2qFEmIg3TKOPF_UihQ>
    <xmx:lJRgZubUfIcSnjzVgHctR7tINziGJJBOnxGx0QqzHDrlM9RzFsprqA>
    <xmx:lJRgZvlBe0NaxDDAayhT-6BkcRBrhS2KXBr6nDkUbADkQJUrs3i2DOIe>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 12:38:43 -0400 (EDT)
Date: Wed, 5 Jun 2024 09:38:42 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: blinux-list@redhat.com
Subject: Re: on debian installed the makedeb stuff
In-Reply-To: <44422bae-814f-be23-2399-3130753ef288@panix.com>
Message-ID: <17034398-80bd-a55d-df1d-e662672ef6ea@hubert-humphrey.com>
References: <44422bae-814f-be23-2399-3130753ef288@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.149 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi Jude: Well, some weeks ago I couldn't get makedeb working, as they have some 
tools to convert Arch packages to .deb files. Anyway, please inform where would 
I find this "mist"? Thanks in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

