Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D11457A9D
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 03:30:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637375415;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L2mwutNjl20iaDPkouZLy4XP/Qyr4yC8IDoFjrPSzcs=;
	b=hrUZzVRRwHfFdbiC2E7NETtTYhl4XPedVDDId6hDmEdvh6U/KtuN3vfnSk8/gUN5Q/U6Of
	cm5rBbqA5xTefq2ixjbEI8mXD1iQGEZHx3y2zSDlvauuO7cjdzKGYJkKAyzFpNoDVDzW9x
	QUwc6ROuB6/3JTiw4awxMjuwh4ukodU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-242-kZSE5lxIPWSFVCeD1ginRQ-1; Fri, 19 Nov 2021 21:30:12 -0500
X-MC-Unique: kZSE5lxIPWSFVCeD1ginRQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 862DA18125C0;
	Sat, 20 Nov 2021 02:30:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2EEE100EBBE;
	Sat, 20 Nov 2021 02:30:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5C0141832E81;
	Sat, 20 Nov 2021 02:30:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AK2TtV7008279 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 21:29:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 310892166B2D; Sat, 20 Nov 2021 02:29:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A6F52166B26
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 02:29:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA8FE1066558
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 02:29:50 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-521-wmP0_Ou_MNiU2eF6mTsORg-1; Fri, 19 Nov 2021 21:29:48 -0500
X-MC-Unique: wmP0_Ou_MNiU2eF6mTsORg-1
Received: by mail-qt1-f178.google.com with SMTP id n15so11328954qta.0
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 18:29:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=IsMDlGBkh5MeOC12E9Pj2iPC06DUHixU4odG2c9Uyug=;
	b=T0+f5fUkU+W/+y69KzEJkSf/LDq9NrERqQRE7SfcrP9Ow8qXrvS4r0VCJY3aQw1s8S
	OPXQRKWmnucAsxClcZTNSzNPqlIIZTn84+7Mk6qNcsr/5iq6gDVy1p1BhtehMt7J7lhR
	5tpB7Ess+SgfFBJgqwS3AqfaiXVd4eASdhnrHU8XbTz1GMHKFoFcvOQTIB+ipIDtKJWZ
	pJIn4tHOn7sye+UPek8S3KZ/v3KpFiOJ0STDMs/uqaSNWKkv/Nyed5vDsDW3BGG39bKl
	ur2hdLe0m592sXG6GY2bxzsz8+Q/fDuB/wPIOft5qyAXrcGO1focf0lSncWtVPI9DfQL
	iwbg==
X-Gm-Message-State: AOAM532H+YYdnYCewTFbWyggqUZrHHYEiCywXmUp87M8oFByFDY87MhD
	fB88Y+SmycwJtgr3ti0+i7jd2sPO0rPskjxDFaDzbXWY
X-Google-Smtp-Source: ABdhPJyAK96pxy+5ZFEtOTSJPiyPhr1aJUbfdNovXSUefm08h12fluKn1Mja70dZvxD04YwZq+6fEmtRGaxJHFj79v0=
X-Received: by 2002:a05:622a:c8:: with SMTP id
	p8mr11191662qtw.52.1637375388348; 
	Fri, 19 Nov 2021 18:29:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Fri, 19 Nov 2021 18:29:48
	-0800 (PST)
In-Reply-To: <fe6f91df-994d-e4b5-5b7f-054e8d273546@gmail.com>
References: <6283f17e-5316-8991-44ce-442189ef349e@gmail.com>
	<fe6f91df-994d-e4b5-5b7f-054e8d273546@gmail.com>
Date: Sat, 20 Nov 2021 02:29:48 +0000
Message-ID: <CAO2sX32wsCa+nmyU1+m1sHbTbQWCDTgeHp=514T08SZpi+kvcA@mail.gmail.com>
Subject: Re: what is the shortcut for continuous read on orca
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

And if Caps Lock plus semi-colon doesn't work, try insert plus semi-colon.

On 11/20/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> use caps-lock+semicolon for continuous read.
>
>
>
> On 11/19/21 8:50 PM, Linux for blind general discussion wrote:
>> What is the shortcut to have a continous read for orca? I read through
>> all the shortcuts for a laptop and I did not
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

