Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A51454847F6
	for <lists+blinux-list@lfdr.de>; Tue,  4 Jan 2022 19:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641321392;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wbCspDCJNOhVhDabd9/1kXOasCX2TEzRFCLyRr26bAM=;
	b=dVWcg6XjOd9bMZNvHYZ/+ocJxo6FFR0lhXjWVGMZTSlYyRf+Md/ApDVKQx9ddYvQhhExpK
	xOJxmxp0mXSvmvUVCYAGans7axgLylh1N0wgQy/R3dArSV8D+4gyrsHCnfEMLQ6mNlCS8N
	RCxIM4lPe+LwJaBuh+6XvHQH62k84l8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-516-ih-zXIiAMkeDc-49Cw8yqQ-1; Tue, 04 Jan 2022 13:36:31 -0500
X-MC-Unique: ih-zXIiAMkeDc-49Cw8yqQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6E9681EE61;
	Tue,  4 Jan 2022 18:36:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FE9B7A412;
	Tue,  4 Jan 2022 18:36:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 585481809CB8;
	Tue,  4 Jan 2022 18:36:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 204IaLaZ011985 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Jan 2022 13:36:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D6FDC53B7; Tue,  4 Jan 2022 18:36:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D166653CD
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:36:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 760FC2B76029
	for <blinux-list@redhat.com>; Tue,  4 Jan 2022 18:36:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-663-4bgoCb_uO8OJcNWk1qHAnA-1; Tue, 04 Jan 2022 13:36:16 -0500
X-MC-Unique: 4bgoCb_uO8OJcNWk1qHAnA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JT1Xc3kdMzw9j;
	Tue,  4 Jan 2022 13:36:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JT1Xc3P9Wzcbc; Tue,  4 Jan 2022 13:36:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JT1Xc2yTTzcbC;
	Tue,  4 Jan 2022 13:36:16 -0500 (EST)
Date: Tue, 4 Jan 2022 13:36:16 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>,
	stormux@groups.io
Subject: Re: Installing Arch
In-Reply-To: <e3198136-9cd1-eec8-812a-3607b34d7e84@seznam.cz>
Message-ID: <68edfc1-c83-4717-240-51f5f37cfdaf@panix.com>
References: <e3198136-9cd1-eec8-812a-3607b34d7e84@seznam.cz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

1) get a current iso,
2) once iso is burnt, boot with iso,
3) hit downarrow once as soon as disk movement is audible,
4) you should get a choice of sound cards so make your pick,
5) once logged in as root run archinstall,
6) if you don't make root account you'll make a superuser account and when
prompted to do so enter the login id,
7) when you get to the prompt for adding extra packages key in espeak-ng
aand alsa-utils if you want speech.
Jude


On Tue, 4 Jan 2022, Linux for blind general discussion wrote:

> Hello,
>
> how to install Arch linux? I have broken my Stormux and I would like to
> install it again. But after launching Stormux new image, I have there only
> prompt. How to work? I know, at the internet there are lots of tutorials, but
> I am not programmer, only user. Have you some experiences with Arch
> installation and with new Stormux image installation? Can you write me step by
> step tutorial for beginners?
>
> Thanks a lot.
>
> Best regards
>
> Vojta.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

