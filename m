Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4CA494FF4
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 15:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642688251;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fVweKic9psyeEtr/jplUBIfAwWjh+bHNyXWqUJuaXYI=;
	b=DLMEeQWTnEvw/L0+Xji6i6pafrxgiKt+CKY17wHOyrTmoiza6NknM6eozipljmKs/p1IQ4
	9goxtZMce0oqabUkoaykiKFIsq6AKII8regzamJ5jlDounn7T5YP80YelyTf+6gmLv5HWq
	o8pjltF/2USg8RjgPqIhnZZOfHjHHjI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-604-PvaqYBf6ObOuhlkUn-YoSA-1; Thu, 20 Jan 2022 09:17:27 -0500
X-MC-Unique: PvaqYBf6ObOuhlkUn-YoSA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02F0C1018720;
	Thu, 20 Jan 2022 14:17:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD3B67E2FB;
	Thu, 20 Jan 2022 14:17:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DBBB64A7CA;
	Thu, 20 Jan 2022 14:17:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KEHGDv013738 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 09:17:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E9E41121339; Thu, 20 Jan 2022 14:17:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A08F1121335
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 14:17:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5021E811E7F
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 14:17:13 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-613-utHgxNsBOneOZeHjngSY-g-1; Thu, 20 Jan 2022 09:17:11 -0500
X-MC-Unique: utHgxNsBOneOZeHjngSY-g-1
Received: by mail-lf1-f45.google.com with SMTP id d3so22082260lfv.13
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 06:17:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2rHPi4BZ/e/7TQ4fsbv1rAJ49IGam5YM+vskGQ/9jx0=;
	b=7yY9FyU5pAvCkhwIBkj5NrFvLUzybcBc7wWHXA4eRPlEfcbNml4QOVzG1zALeXe6/V
	DJVOfvEqVKuYmlMj8odjy0swTFXAEoog2grKzQ3jYsl0cHQWvCD2ocnVpBPo5suucrCe
	ZnXWZOsbyRHt0jWMYmSnagh+5bQMsq0VKCY+0XVd4wNS225Bik4c4H0GHfEXJDF0zEaP
	Ax7KxlEG+klL45k4LHR/MS5ZpP6cpNekr92Q1WeckQjBUqcRLvthZdKGWtPlQY1mDk5X
	EZpH4eSqap5yHj6BXwDjY5PaVPZJwd3QVvs3uBdja/fxSuiVGVgcttNcTVrmOfmZdr9H
	rORg==
X-Gm-Message-State: AOAM532IKj+a+OKEHBkl9t1bWjh/UNYUFGrRd9xAortahGm1YvZuW8KG
	L5nxTHUTcrQ8Sk4K2/j2UxyYZICPAjc=
X-Google-Smtp-Source: ABdhPJxWseIbz2X8exIKhsAmqoTHR+Vj+P17VdNU5xGsoU5emoFW4buW9zfjKc1eZzIz+eeBqlHBTg==
X-Received: by 2002:a05:651c:1253:: with SMTP id
	h19mr4770532ljh.501.1642688229595; 
	Thu, 20 Jan 2022 06:17:09 -0800 (PST)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id p2sm350656lft.288.2022.01.20.06.17.08
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 20 Jan 2022 06:17:09 -0800 (PST)
Date: Thu, 20 Jan 2022 17:17:07 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Before I install Arch on bare metal...few questions
Message-ID: <20220120141707.g33dbtoensce2emo@alex-pc>
References: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
	<20220120122837.ipmq2bz3lp227tmg@alex-pc>
	<2f8af423-72cd-57c5-4864-158969fd662a@gmail.com>
	<20220120130015.b5v46qpflxbntq5v@alex-pc>
	<3971b8f5-27af-2f7e-d5c2-f88da04436f7@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3971b8f5-27af-2f7e-d5c2-f88da04436f7@gmail.com>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 20, 2022 at 01:19:49PM +0000, Linux for blind general discussion wrote:
> So let me get this straight. I'm on a 64bit UEFI system. Solus, IIRC, comes
> with Grub.
>
>
> You're saying I don't need GRUB to swap between OSes so I can have sdboot
> with Arch on /dev/sdb and Solus on /dev/sda?

exactly. you can select needed os in your efi boot manager. or use
efibootmgr command to modify boot order or next boot options.

> So next logical question.
>
> What's the best way to be able to access my Solus disk when I do install
> Arch, ensure it's the same file system and it should all work fine or?

just mount it in arch.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

