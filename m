Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id EDBB711A34B
	for <lists+blinux-list@lfdr.de>; Wed, 11 Dec 2019 05:01:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576036916;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XWvvTQ1RsrsECkf/WU9s0ygXSVKTQTltB94PwYfAPXc=;
	b=cISgzMHSXTliQTQ9LFIaOZOYPvkqdazGwUQ3+I8uzSUersgx1No1GDKnjjNktnW2kKh4Ff
	XeyvgNObbO4Kzu8Qq6AFujuXC+jKamoddlQlXJn0+E3iJaxemIsgez8r37zAR8DAYo6EqR
	TMo/xBEYXyBtEVGNwwj2xeFuwV0uYjw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-rQ1bxWKCNzmXFP4EyGzaeg-1; Tue, 10 Dec 2019 23:01:54 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEB9B180449C;
	Wed, 11 Dec 2019 04:01:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BAD6E19C69;
	Wed, 11 Dec 2019 04:01:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84A5383705;
	Wed, 11 Dec 2019 04:01:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBB40rdr023245 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 23:00:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9F6432166B27; Wed, 11 Dec 2019 04:00:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1B22166B28
	for <blinux-list@redhat.com>; Wed, 11 Dec 2019 04:00:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68F771804562
	for <blinux-list@redhat.com>; Wed, 11 Dec 2019 04:00:51 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-3-5DlpT4YCO4-YBRSyZspFKw-1; Tue, 10 Dec 2019 23:00:49 -0500
Received: by mail-pl1-f174.google.com with SMTP id s10so865221plp.2
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 20:00:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:references:user-agent:from:to:subject
	:in-reply-to:date:message-id:mime-version;
	bh=WO/eGltCZCxxaT0oq0YE50w/xosXQDnCI+j5b0QqmFM=;
	b=W5gcy03fz6+HJlmcPSkQ38NaIPNsuJC9sOXZGA/yE9LTvnbXXm9b67QxF/Rd1AWWGj
	RVgObQSWaICEN+8c5FFSqHg11gSiVhb/Qj30BkXZiQYKvYcw0a/x+cAqGQ3OFMzEuMEN
	mPTUWvQvd6xF8HcxHzujgsVNV3a4p05W2kEO/kqtEWSg7msGBARQD3pAV14emQaylXzf
	dmXRpEnu5p5d6/UJbnCbFAcO+eSXqscZC3wzRty0pKQhLu/UHMAuS7t1JSSEhUoKC0jb
	WfAShkU2nd5RAHKWWZCcyCMb+sJSvcS1X6MBGhJAPNM2W5c8UF3FWK7xNVjP4HxblWq8
	qffA==
X-Gm-Message-State: APjAAAVDdUHpT7KaljvivusoFZvyhy92ugBB0xKJIIPKtXgkjFjswqo/
	C1OZ8XdHp7bv858sLDxeoRzzdc0I
X-Google-Smtp-Source: APXvYqxtfPibUKTUl8b7c/ER4QAwcSPWVuSw5kfplUO3Z/c9THuv0MSsuxSbyIE9Z21RjCf3naIXSw==
X-Received: by 2002:a17:90a:d985:: with SMTP id
	d5mr1159709pjv.73.1576036848087; 
	Tue, 10 Dec 2019 20:00:48 -0800 (PST)
Received: from buster ([36.68.70.111])
	by smtp.gmail.com with ESMTPSA id m3sm522212pgp.32.2019.12.10.20.00.46
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 10 Dec 2019 20:00:47 -0800 (PST)
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
User-agent: mu4e 1.0; emacs 26.1
To: blinux-list@redhat.com
Subject: Re: google high security and linux command line email programs
In-reply-to: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
Date: Wed, 11 Dec 2019 11:00:43 +0700
Message-ID: <87zhfzcxzo.fsf@gmail.com>
MIME-Version: 1.0
X-MC-Unique: 5DlpT4YCO4-YBRSyZspFKw-1
X-MC-Unique: rQ1bxWKCNzmXFP4EyGzaeg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBB40rdr023245
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Linux for blind general discussion <blinux-list@redhat.com> writes:
Is mu4e counts?
I have mu4e running with generated app password.

Regards
> Has anyone here gone high security with google and generated an
> app-password for their command line email apps?  If so, which apps?
> I have and can use a few different apps but really want to know what
> google will be limiting me to with two-factor authentication and an
> app-password before I enable two-factor authentication.  If there's no
> apps this can be done with, no point enabling two-factor authentication
> and trying to generate an app password for any of these.  When google
> security is after users to enable higher security and google recognizes
> linux devices have been and are likely to continue being used on an
> account those messages ought to include a list of apps that will work in
> linux.


-- 
Edhoari Setiyoso


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

