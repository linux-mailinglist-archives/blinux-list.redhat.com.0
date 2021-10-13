Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7246F42C1CA
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 15:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634133199;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1ajsUmZtNlnvp4GclYvVnuONSzTfSc9xednX3yH92Nc=;
	b=TSMKXFGc0dbFVlpRJYVwg+RT0SQ5Z6BULEH6KWr+oLaIozWMb1fj1PgSdrVwIlwl5CnaqI
	V2+quQVC73U6DonmXCGpdbt3ihNHOeB/wQ2/VolV+jx934qy7T6YB0GN1hm7SW9e0RNJ4I
	ortSbpXD1Zpp5aC22wcqXY+n4oS9OSo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-nnVKV3oWPNebr5JL9jV69g-1; Wed, 13 Oct 2021 09:53:16 -0400
X-MC-Unique: nnVKV3oWPNebr5JL9jV69g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0BB4610A8E03;
	Wed, 13 Oct 2021 13:53:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 375055D6BA;
	Wed, 13 Oct 2021 13:53:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 063334EA2A;
	Wed, 13 Oct 2021 13:53:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DDr6eN012600 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 09:53:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 55F8163AAF; Wed, 13 Oct 2021 13:53:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B2B363AEB
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:53:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C73D899ECF
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:53:03 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-114-USjVbbkEOdGuu7SbMeZ_7A-1; Wed, 13 Oct 2021 09:53:01 -0400
X-MC-Unique: USjVbbkEOdGuu7SbMeZ_7A-1
Received: by mail-oi1-f181.google.com with SMTP id z11so3938616oih.1
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 06:53:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=anhakTiTdx7ZXNi81yeE4mxbk070r6RL/ud02b69kSY=;
	b=rFLODjtF3jj1C200wYxhiTXkbb70fJD0VFNvzPAvf7bwv1Yw2eTTvoDXUTN9lP5sHh
	WlCoquF6Nn67ACRZAfZUrWpAhA8/cxbG8trD0lhl1P+GJIJrvSiP6v41m1N9d2AdIljQ
	CYQISn3EwEtaDNyR8bDrjAlQMyphJICEM1oWt0e6ewzR5+6csPf21y1MD2g1j9xWAjHF
	HZixHM5g35tJTWL8Rt16JUw2S71IEuD74HGgK0F++SXG3i2dYeW7nV/6n1OktehK5S0b
	S7r7C1EgH7b3L9QXkndpuZaqMEMyj9880VpACBKoepET+bth2ZKDsZcd2Tb4owj0AdML
	8u1g==
X-Gm-Message-State: AOAM530Qcg980uf1Z4vX5wgU7STcByKTf/1QIxyX4x6nMeNxG1hwqGJT
	agOrDejj4nu4CHGzwPJrlLXiozMG6SM=
X-Google-Smtp-Source: ABdhPJxFzw/UvchJVrlYqyG6EilcK3d8ZAyR3IYDBahXWGnHWCIEmZxmJaqfd105hDRvAXSCA7gyag==
X-Received: by 2002:aca:3446:: with SMTP id b67mr8355994oia.84.1634133180981; 
	Wed, 13 Oct 2021 06:53:00 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:bd72:15f2:6981:d4c9])
	by smtp.gmail.com with ESMTPSA id
	ay42sm3063309oib.22.2021.10.13.06.53.00 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Oct 2021 06:53:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Wed, 13 Oct 2021 08:52:59 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
	<f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
	<6DA5EF94-AB46-4F04-AB11-529A2E08E122@gmail.com>
	<00cf4c56-cad1-8e30-aed7-b0299c9953d5@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <00cf4c56-cad1-8e30-aed7-b0299c9953d5@gmail.com>
Message-Id: <38C4FF5F-C162-407D-992D-8D02B3A936F9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19DDr6eN012600
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Wondered about that, because a friend tried mint with dropbox and could not install that.

> On Oct 13, 2021, at 8:30 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I don't use dropbox. 
> 
> 
> -Dave 
> 
> 
> 
> Sent from my Think Penguin J4 laptop, running Trisquel GNU/Linux, version 9.
> 
> On 10/13/21 6:45 AM, Linux for blind general discussion wrote:
>> Had you been able to get dropbox working with mint?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

