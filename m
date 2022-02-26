Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCFF4C5840
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 22:10:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645909852;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=piaVBugfxq2g/z4AohgME/1hFsdFYsLk7aUUcaodpCc=;
	b=TYXyNi1TTSljdgDxtPh7D6x1j4UuovKEXKrLi+PAgBCG6dWrPjIQMGlK4/CObAkVzpleOs
	xsSnnvXRoHh+lr8Nw2A8M1Z5eS8soXJdE0QRzTK4fXCDP9MS/aTDvgixG7hNIJj1i/+KVg
	KdRHHbrCnG52hkV/9HN7HQ2cXx8IbGs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-466-hRGr1BUyPqCwsrP2L3g0qA-1; Sat, 26 Feb 2022 16:10:48 -0500
X-MC-Unique: hRGr1BUyPqCwsrP2L3g0qA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 195A71091DA1;
	Sat, 26 Feb 2022 21:10:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8EB78ADF6;
	Sat, 26 Feb 2022 21:10:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 69F354A701;
	Sat, 26 Feb 2022 21:10:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21QLAfAd013700 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 16:10:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C7DB5C202D1; Sat, 26 Feb 2022 21:10:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4224C202CA
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 21:10:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABAEC1C068F4
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 21:10:41 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-332-w6Mo2uoUNpGJJmz0Rdmnjg-1; Sat, 26 Feb 2022 16:10:39 -0500
X-MC-Unique: w6Mo2uoUNpGJJmz0Rdmnjg-1
Received: by mail-qt1-f178.google.com with SMTP id w1so5732869qtj.2
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 13:10:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Huq+QUstJIyr/42Z9Y8Nr0+Oke0Htk3luGAX96p1GoQ=;
	b=oBHsuvWga0oLP3V69HKd+HeNBrG7cN1rDfkrMUrYMW40MtcrXAimPGqWrUuF0hfyrW
	STLkXpA2HEpFJXWXPwavJnqkpLhAYHXbHk3uHpiHQh83+lrKEkLewqY/hKomjlFchYhw
	axrHC5Ay4blu+/wEtf5LtG5S9QvQooeNTQIs9CclrQpaU2KTlI/1zfcgUKd0G4wx1DeJ
	w6P0yE12EzlE87+z6hIv0S1DfNPyGvJEyveCzlRM9xGXwSPFPtO/npiArj8f5hGPF+nV
	l8RDjkjpkJiuGC94fpdVdO9Rsyg36XWzR2qiKkMt5yYzNPyU4GW1/2A6Fi4sYTbYnO/W
	xMRA==
X-Gm-Message-State: AOAM533h1imuK/Qzn25f31dtI1lzpt6IIPzxIty4rrdzEnWR576ycqtj
	VHd3bQa9eRfmMDzjqWiGVvcktS/cIaE+LO/sUDLDgxMHL+U=
X-Google-Smtp-Source: ABdhPJwidsA27DUGzyZQ7DSrIOXUjDGEYuul1Q42KNjhOnevuAuNqeMbVvSnXtdHNZEqhEGFbiJRbeWDmdHkIA8yEq4=
X-Received: by 2002:a05:622a:1b8d:b0:2d9:7048:5d68 with SMTP id
	bp13-20020a05622a1b8d00b002d970485d68mr11819631qtb.5.1645909839376;
	Sat, 26 Feb 2022 13:10:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Sat, 26 Feb 2022 13:10:39
	-0800 (PST)
In-Reply-To: <874k4l7w57.fsf@yahoo.com>
References: <877d9ixl4s.fsf.ref@yahoo.com> <877d9ixl4s.fsf@yahoo.com>
	<20220226095836.lftrrnevabjg5bnj@begin> <874k4l7w57.fsf@yahoo.com>
Date: Sat, 26 Feb 2022 21:10:39 +0000
Message-ID: <CAO2sX32CHiLNMaurRs5ObC7p6ON1HO6E+cVNVCmr6aDQvPzb=w@mail.gmail.com>
Subject: Re: Do we have the sleep function in Orca?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

You can also use Orca+s to toggle speech on/off.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

