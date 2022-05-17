Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3286052A7A7
	for <lists+blinux-list@lfdr.de>; Tue, 17 May 2022 18:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652803773;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xNK91pmYvtnEAxC84DNw453SFhgC3J7GJX22E8zFF2Y=;
	b=ZPO4XFz2vR69HR59C4Gc8Y/7W/PY6M2vBzmYQ2ais8FxWSHbcsdwWP/d/DsBoZdevhXZYw
	D/xQufACYVKFeQ5Yxb3BTPAlRXB58rtdgKZ7tQgY2D61fWwFe1goTcgnJ/w9dv+CNMK5Fu
	JTojwfF8vmHb+GQzj4EXeETkgupC0PU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-341-fe52_LDUO8u9oU_Wb_VJJw-1; Tue, 17 May 2022 12:09:29 -0400
X-MC-Unique: fe52_LDUO8u9oU_Wb_VJJw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E36B53801EC7;
	Tue, 17 May 2022 16:09:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 109F740CF8F5;
	Tue, 17 May 2022 16:09:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D508C19259F2;
	Tue, 17 May 2022 16:09:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
Subject: Re: Fedora 36 install?
Date: Tue, 17 May 2022 11:09:20 -0500
References: <mailman.15273.1652800983.111207.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.15273.1652800983.111207.blinux-list@redhat.com>
Message-ID: <mailman.15711.1652803766.111202.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I had problems with ubuntu mate 2020 through 2022 I think.
Orca talked, but I could not get away from super install.

> On May 17, 2022, at 10:22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi all,
> 
> I was thinking to give Fedora 36 with Gnome a go, but I cannot get Orca going at all. If any of you successfully installed it, please help?
> 
> I like Ubuntu 22.04 with it's FrankenGnome 42 implementation, but would really like to have Fedora with vanilla Gnome 42.
> 
> I've tried Gnome previously, but it's always been rather unresponsive in my humble opinion. Not this go round.
> 
> -- 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent using Thunderbird from the Ubuntu machine
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

