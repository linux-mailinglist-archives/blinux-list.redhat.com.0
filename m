Return-Path: <blinux-list+bncBCA4T6NLSUIBBQGE3CUQMGQEMB2RGEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2D47D2B70
	for <lists+blinux-list@lfdr.de>; Mon, 23 Oct 2023 09:35:29 +0200 (CEST)
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4067f186094sf16692855e9.1
        for <lists+blinux-list@lfdr.de>; Mon, 23 Oct 2023 00:35:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698046529; cv=pass;
        d=google.com; s=arc-20160816;
        b=iXCG2izM8H8qwXBqxqCCV/hJatkEkLK8xoPviFDzKLda/AKlmc+2yBgESRZy2kG+rD
         NE+hA/+dAwVFSzr+SJzwZ289nU6m1pevZFsqSfGubkw3u3CMaa5PXgAu5FFkzXvWjVNi
         +5VHXAHeJ1rt2OWNNZRfAUx7RKPL/Zje7io+ZMd2oHBsMwC+ZB4SRdwUAPcZ8wbCkkEG
         9EZClRt2VeR1P8ziyJ0KAHAreXT2avxYnU6oOXA+SBj0J2QHq6UJO9Ea98vOooeuUref
         F8KIMmECddCH2/uXv3prWrcjZjkIBuYAH8DI5NA6Nu1l4wBGvivdySZnWhmIho5vMpEG
         W4LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=YDZAGNmIBAb+1bThZJJd2IP9YsQ/BZoQtjAX6KBmOOo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=BHZkBJ3B5kMQbWLYxAzjwCtoMp/82nEsivvDjuNIIwqtKeTALWTreH02ywT/+ulcqK
         +2ybktBhD9kMhxpEwTjQLA39YY02irTCk+jn2AL5wEbS7UuPtRVqVBl/hIWbPOm3zHk/
         sVseWtHVEyyw4o8e0oSoCNgljRFEdhNVngfdCmP4LQPt0xRx1sL534e1mf4ZNnETuVSR
         24+JZN1g7T8PVQjgj9QyuQZZKNwLQHfV+/pLC2JZ7JaizFUiS5WP1vBoBeJKMsXTDTEC
         sCuxBOo5fN/roRpCZrGwgAi5pDbyobt24KQCChoTw5ABLmejhE27XnaTxHCOK3WBXeDF
         QMXg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chris@schoeppi.net designates 193.41.226.221 as permitted sender) smtp.mailfrom=chris@schoeppi.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698046529; x=1698651329;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDZAGNmIBAb+1bThZJJd2IP9YsQ/BZoQtjAX6KBmOOo=;
        b=iTtkteCsX/ZzRWH7aUBGQOB+LMzHoYheSQJWf8hxPjO0U4h8OqE6OEyUXCq8RG61jI
         J2gyvQUsnHnPSXv0tO+HoPKbV+2RAR8nakB99VbScQz9cz6mfDRNxc0mMyRLX1FluMj+
         9CV89pstAZze8bwdTu10Ynm/Ny3J6IDkZMjSR4BwxIV/ko5eqXvQbyyoRQQxqqMauy8g
         svTQYvocfgWSutCQv/7yVg8WE7yRKZESoHKjP7JU3A8H2UgGgtO746UVpK4Ed6BNScoW
         1T8rFz/vKscaPbTyKkxYd4/d24QkWawbSrpn9ol4bIP27PCD7tT/5HULttf896UmbCXZ
         u67w==
X-Gm-Message-State: AOJu0Yy/bOlDL2xH0P46TxOQASK6kGjtLrSaLbM10Kx/IaBy+tY5sCcR
	834XxJy16E3ski2SDzTitPw9wA==
X-Google-Smtp-Source: AGHT+IG+m2kpVhRlJrAAK4d5gqf+2GU+H5SQXvvRJE6yv7UlrAangC//4T905soPbfEkoAx38eRtUA==
X-Received: by 2002:a05:600c:5489:b0:402:bcac:5773 with SMTP id iv9-20020a05600c548900b00402bcac5773mr6777588wmb.38.1698046529161;
        Mon, 23 Oct 2023 00:35:29 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:600c:4689:b0:406:538a:190a with SMTP id
 p9-20020a05600c468900b00406538a190als823071wmo.0.-pod-prod-06-eu; Mon, 23 Oct
 2023 00:35:27 -0700 (PDT)
X-Received: by 2002:adf:fd45:0:b0:32d:857c:d51d with SMTP id h5-20020adffd45000000b0032d857cd51dmr5838459wrs.60.1698046527418;
        Mon, 23 Oct 2023 00:35:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698046527; cv=none;
        d=google.com; s=arc-20160816;
        b=0h7I8BQlYFPJCbR/J+xqBS8eCvatd9mLZr+z+O+dPV3Br/HH/frFAZX2qtfL+o32nJ
         y/kaQLqsAnKQXK/GtPgwfyiLAqwnwrPFS026hGS6SPSn1g/nTkcqeV33P3eJkwCMRcDY
         ik8OB8N5wNV94Hb0VSl8BTNmZOhgLbfVP1uLm4z/kRBm0U3mHUsZtk6PQsGNaRDhdbPB
         Qq39KhH5GdYHIpqyMl3Bft5+hA+yVkVnVj6EHdoUFMZyKQVAsPWLSSh7xsAq8vTvMF/u
         llXzsaAyhGn++geyiWcPxANlp50DFlP9NxyQqUivGZMWS1Skn1KuLyRMSXlF5fCwGNJ2
         9/yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=YDZAGNmIBAb+1bThZJJd2IP9YsQ/BZoQtjAX6KBmOOo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=gtRYx6ZpoBNCCkkQ1bPW4sQWMp0vURiqkpCEmvt9FCNY/jXFNUrJPHD7r/5yC5ODtu
         D8j3zYGab+N/0J5Jp/g0PiUgGXJNRVWoi9jsHwSJHiIlLdCDSmgAgJScL+7Rz0+QQgRX
         v5w9WEaIjvbtiUSGwUhoh+71I+11SLaD5LNCJE1hxrrwTP8c26BB5d3W5RE44caPqiPv
         qPL2GwFi6OevzzqZPZ2nyCVJzWax+7UbyMuf4nD5+P+CK8gWx2zsyKlaiSp5u63m1Ygz
         CLH448z0Ni6ogOgKao81BeMzqC2f/uwznTOlPnzb4p1pI3LARhA7uYCejMS/BeZnooCG
         t0jg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chris@schoeppi.net designates 193.41.226.221 as permitted sender) smtp.mailfrom=chris@schoeppi.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id bt14-20020a056000080e00b0032179b36d38si4417813wrb.901.2023.10.23.00.35.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 00:35:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of chris@schoeppi.net designates 193.41.226.221 as permitted sender) client-ip=193.41.226.221;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-350-CTVNeYvjMNWCW5tcnWnk3A-1; Mon, 23 Oct 2023 03:35:25 -0400
X-MC-Unique: CTVNeYvjMNWCW5tcnWnk3A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC47E3821354
	for <blinux-list@gapps.redhat.com>; Mon, 23 Oct 2023 07:35:24 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E8D66111D784; Mon, 23 Oct 2023 07:35:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1B321121320
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 07:35:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABE6E28EC106
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 07:35:24 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-427-J6GgB29SN2abAkDgJ9ZwoA-1; Mon,
 23 Oct 2023 03:35:21 -0400
X-MC-Unique: J6GgB29SN2abAkDgJ9ZwoA-1
Received: from d5421.linova.de (pc19f8a83.dip0.t-ipconnect.de [193.159.138.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.schoeppi.net (Postfix) with ESMTPSA id B2B452F0D6F
	for <blinux-list@redhat.com>; Mon, 23 Oct 2023 09:25:36 +0200 (CEST)
Date: Mon, 23 Oct 2023 09:25:35 +0200
From: "'Christian Schoepplein' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Raspberry pi post install
Message-ID: <ZTYf74InEAqhvPMi@d5421.linova.de>
References: <m3wmvfmb15.fsf@dalen.lamasti.net>
MIME-Version: 1.0
In-Reply-To: <m3wmvfmb15.fsf@dalen.lamasti.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: schoeppi.net
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: chris@schoeppi.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chris@schoeppi.net designates 193.41.226.221 as permitted sender) smtp.mailfrom=chris@schoeppi.net
X-Original-From: Christian Schoepplein <chris@schoeppi.net>
Reply-To: Christian Schoepplein <chris@schoeppi.net>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Subscribe: <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>,
 <mailto:blinux-list+subscribe@redhat.com>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi Lars,

On Sun, Oct 22, 2023 at 08:22:30AM +0200, Lars Bj=C3=B8rndal wrote:
>I've installed the latest Raspberry Pi lite OS. Previously it was
>possible to login with SSH as the user pi with password raspberry. But wit=
h the
>newer images, it's not possible any more. The recommended way is to use
>the Raspberry Pi imager to set user/password. However, I don't have a grap=
hical environment
>to run that tool.
>
>Do some of you have a solution to this?

Yes. See here:

https://medium.com/nerd-for-tech/boot-raspberry-pi-headless-and-enable-wifi=
-on-linux-c204034f7ee3

In short you have to write a file called userconf.txt to the root of your s=
d=20
card with the users and their passwords before booting the PI the first=20
time. The users will be created then automaticaly...

So, still no wizard or grafical tool needed to install and configure a PI..=
.

Ciao,

  Schoepp

