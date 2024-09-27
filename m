Return-Path: <blinux-list+bncBDYPVTOXSQEBBJUT3S3QMGQECOHXU2A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D807988ACF
	for <lists+blinux-list@lfdr.de>; Fri, 27 Sep 2024 21:38:17 +0200 (CEST)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-84ecba2fa56sf24000241.0
        for <lists+blinux-list@lfdr.de>; Fri, 27 Sep 2024 12:38:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727465896; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ek9S+Pp0Ssm3kRDGDDJ+egSg4fNA/89knscTnnSEI5Byqn9heNPVf3C/napqxlTE4t
         AZ9R2JIH+RUoBoSIlKHc/uHDlWoJZw1WGpzwX85Np3igOGhGAB3FoIb9LoTiXZr/Fihy
         TO1XSRCgHpT2dSRd1zbUJoUWkFqfnRA/2WgGMFDOO8NrHmq06R0lgg+o4EY0rTsCqlOu
         afXz3bup1F87vzl9YKObor25UC56yYLeea/GjRriBBpSVhK+K5aul8NIi4Jat2YGY8eY
         xp4ypIT0g7NZpVIuMZNT9fbEIOEZTf7BEY/drvExAjsdU9ccPr+q6c2cb5IABIBeUZ60
         h6qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:in-reply-to
         :references:message-id:date:subject:mime-version:from:delivered-to;
        bh=G9E6WXEI1V3E41xs1UumG6/L19MI4tbjk2xODwvC9aY=;
        fh=aDT7x1yHIaY0Sjk4s7IVMlxbCh0B8jftDTKUbxteKhA=;
        b=Bfc7Nsbg9mLOSbijnqRKxvlKEOZpBZnkqQ8eHuy2wOMdxrpsf2D2T0/0y+dwVgi0wL
         lwIKRk6dRWPjA3ig1RxcVK95GqeWdvVQADDg7OgyATplikKEzzWoeGHWPh/cURuJ1Y8X
         +/OFpCUy2OTg1+Ya9MLL4QQhOrGDckgSp49lEYueK9gRUVDaGTo4kGi8a1AvaP/Dv/Au
         m3WnfLHU982S0FjvEh+4UIVqEuuzFCyBrTV1OeCeYS58zUZ/q23vyN0i90o5bEWlKsx8
         E7PXVy9QVJf0JUPtNd/fttIaNW1krXGbWurc2JuTfH+zVRMsJrV4KUkj4A8+peZ7lDM2
         J82Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727465896; x=1728070696;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:in-reply-to:references:message-id:date
         :subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G9E6WXEI1V3E41xs1UumG6/L19MI4tbjk2xODwvC9aY=;
        b=hKUZ3I+cN/SVdUau36JXi336OsuM+ruNjx87b9SdMYII76hYuP7py9Qqa0pCvmXUJX
         b1g5T/4hDIRxQ9ohRch30ypNb53ed6FnmYgtGtm9awMd0MZJs+/yypmFpZRZTM1VprMp
         hllCaXNUepGhNQ9QgEVcC3ZIa32GuVv2TMkQvKLMp/Iuy/huWfMC9a4QBqTskQrLKCHm
         8AIuJMd0KtLx2y1yEwFV+wXJVhGM1CgPSEwJ+hGOr51Pc7H8/llsE+MTxIW43C/hlLtB
         8ytgowqOlByHdi9C83U4xk7VnNZN43fX7g7uxfrlqA+obwDpl98xkZ9BnKJvTMb6U7o6
         3ddg==
X-Forwarded-Encrypted: i=2; AJvYcCUZUobhLsbAo2Xd+GGyz2sarKJvFUjH66u52gbAGdxEJujS58pzQBEpVbisZGjIJcX8Lii91A==@lfdr.de
X-Gm-Message-State: AOJu0YwMq3KPP6zzsCMgP6Yn065aY8QMtCvUHYGAFwCAtqXOmDMA2OWZ
	KmPrSTl6KDotJTOaTBhONBV/1gEADZGXXvLoSLqXGGpZybEZK7EnCWO7YArOD/A=
X-Google-Smtp-Source: AGHT+IE/8mdvGGt//18WnPe/DBY/Znhfp891FqrRYaGa/sqXgIG12ssg8iN/9SY7iTLMnmFMD9pI6w==
X-Received: by 2002:a05:6102:2ad3:b0:49b:cdfe:2066 with SMTP id ada2fe7eead31-4a2d7f569bdmr3906264137.13.1727465895293;
        Fri, 27 Sep 2024 12:38:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7dc4:0:b0:458:27d0:f7cb with SMTP id d75a77b69052e-45c94a2d143ls10067191cf.0.-pod-prod-08-us;
 Fri, 27 Sep 2024 12:38:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUm3EjEH+Ux/xXyBLqeaW66r7nk1/qWm0CN7/m/rhVeLvHde6pAS86ICYSfMgtwkVjm88R/OFRo6otyww==@gapps.redhat.com
X-Received: by 2002:a05:622a:48a:b0:458:34b4:7cd with SMTP id d75a77b69052e-45c9f2a4480mr70111781cf.58.1727465894336;
        Fri, 27 Sep 2024 12:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727465894; cv=none;
        d=google.com; s=arc-20240605;
        b=VvJ/z79+GqUTjfGqrjGh5xNiut/qxN8RPDCJMntIyiRij/6cXayhVZquxmBBOaYQh+
         k0Wy8Y+Idlt7C88wmdcrCsixVh7hC1tj5oNDajsqb7TmZgkl3rqKuuuaj4PXCk+Hn75b
         6t3KrfYKWocIE6fmTykGd/G2YXoQc7cUYgnLyO5yJ982F65po7X43BdUQ3ljbkom/brV
         wc9scQKqATMVCfL635aCqAQeZIJtHfbrOJoD4MDdJZRwNJemr/pZRuKInbzPS1ST+Jo7
         Mwa38UK90DUU4gWZzjWUhPnkmfTGBDWHXp/kpWqgoS0AfklJDKOTxBLabwBrfX6ZAmsE
         FeKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:in-reply-to:references:message-id:date
         :subject:mime-version:from:delivered-to;
        bh=onPIJb4vfO6/QWmxSnM0Vh5pvyVr+Ozo7KE0rTq89L8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HTbL5e4jcLujKcrd1r+sywrNoiExIvM/3owG/oFMmIz9Y/LXzA5Jq7DxKwucLTWYf6
         g9P3D2yiTy8ec6xHqvJpLAAnJ17SKfA7O0X0MI1kKOSbiLAN+5WftBVaYF3G7OHv3WTB
         Ro3foD2pnk9PQMlB2b0PJG/3Y4vG157YS2qHoatRwSLcLH5EnwMonQhWwurZzmBWTpto
         WXRy5FsRGxCCErRB20uuw/nExCUInUysk2blRawLOwCFq5SA9VM01f+hLHKt/SNOcOMd
         uhoF5pFVSUa2al4/fAPHe+dPayH/uYjy1/e/LjClb1JtSedMHZtF7Gr6bn+3wh2ttcng
         1N5A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45c9f34d165si29177501cf.480.2024.09.27.12.38.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 12:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-623-F65pvo2_MWCFdweH132o4w-1; Fri,
 27 Sep 2024 15:38:13 -0400
X-MC-Unique: F65pvo2_MWCFdweH132o4w-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7610B19792D3
	for <blinux-list@gapps.redhat.com>; Fri, 27 Sep 2024 19:38:12 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 730461954B10; Fri, 27 Sep 2024 19:38:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 708571954B0F
	for <blinux-list@redhat.com>; Fri, 27 Sep 2024 19:38:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C8D7419772DE
	for <blinux-list@redhat.com>; Fri, 27 Sep 2024 19:38:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-510-kJDTz2HJPKOWvjNqDX0EzA-1; Fri,
 27 Sep 2024 15:38:09 -0400
X-MC-Unique: kJDTz2HJPKOWvjNqDX0EzA-1
Received: from smtpclient.apple (64.67.55.137.res-cmts.pls.ptd.net [64.67.55.137])
	by mailbackend.panix.com (Postfix) with ESMTPSA id 4XFgjr74klz4ftX
	for <blinux-list@redhat.com>; Fri, 27 Sep 2024 15:38:08 -0400 (EDT)
From: Jude DaShiell <jdashiel@panix.com>
Mime-Version: 1.0 (1.0)
Subject: Re: tdsr on chromebook
Date: Fri, 27 Sep 2024 15:37:58 -0400
Message-Id: <2E7ECD97-502B-4081-B0A4-32901B4FBA42@panix.com>
References: <C90DC7AF-FD31-44BE-8F14-A0F036720A38@panix.com>
In-Reply-To: <C90DC7AF-FD31-44BE-8F14-A0F036720A38@panix.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
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

Something else I discovered.  As a result of having shut down chromebook wh=
ile in the linux terminal, when chromebook started again chromevox was off =
so I waited until the drive went silent then keyed in my pin.  The linux te=
rminal came back and so did tdsr up and talking.

On Sep 25, 2024, at 7:47=E2=80=AFPM, Jude DaShiell <jdashiel@panix.com> wro=
te:

=EF=BB=BF
I finally got to read tdsr's readme.md without chromevox and with tdsr and =
all is explained once you do that read!  Thanks much for writing this scree=
n reader since it is really needed for blind linux users using chromebooks =
and I can well understand how useful it will be to replace voiceover in ter=
minal environments for the apple computers.  tdsr ends up hiding the chrome=
book terminal and for any already used to reading with espeakup once you le=
arn the keyboard commands it makes chromebooks in linux environments so muc=
h more useable.  I put tdsr in /usr/local/bin earlier and next time I start=
 it up I'll run with chromevox to get me to the penguin link then turn chro=
mevox off and hit enter for the penguin link and then try running tdsr and =
see if tdsr comes up talking again.  Since chromevox is turned off no more =
bitching about too much output to announce.  I can likely exit by powering =
the chromebook off then start in again.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

