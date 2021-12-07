Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD4D46C212
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 18:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638899210;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hf4nRGvB/aDWIXNkrAuRp7+rdFPV1qlhtzhPDTsY95k=;
	b=h7dT7MG+dt1Bj3Xe6KSPfP4ychbFZQUy805bDQ2YbIY5wHW6RXzGZ2wpt4YBTLY/9JN3V9
	h0MDD1xPgR1ZLh9JYbW4hBP+kZ1anjQdoVTLVry9t5IjLkiAzqtQDcRqt1nIO/cRjhPGHG
	c68Iy2V6ea5Tc9aPp2CZrcwtVTMr4vY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-179-bF02de41NLeirelfX74hJw-1; Tue, 07 Dec 2021 12:46:47 -0500
X-MC-Unique: bF02de41NLeirelfX74hJw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E83E8015B7;
	Tue,  7 Dec 2021 17:46:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24A434EC7E;
	Tue,  7 Dec 2021 17:46:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECA5C1809CB9;
	Tue,  7 Dec 2021 17:46:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B7HkZM1004130 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 7 Dec 2021 12:46:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0C8D3202660D; Tue,  7 Dec 2021 17:46:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 086F4202660C
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 17:46:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 724FA85A5BA
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 17:46:30 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-546-myCRC67UPAa6U0t4NZfdUA-1; Tue, 07 Dec 2021 12:46:28 -0500
X-MC-Unique: myCRC67UPAa6U0t4NZfdUA-1
Received: by mail-qv1-f41.google.com with SMTP id b11so29243qvm.7
	for <blinux-list@redhat.com>; Tue, 07 Dec 2021 09:46:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=hR90EdDgBv3pE3x5cs8//ck9zc8/20HtHxSj0S7Vp6Y=;
	b=AKVjod157ltb5J+CRAKISQillHeRTdheyxceN/XmeOUy4AUWlwr5tKpPuu2nJTQFRJ
	2HuA9R5JUEhDw05Prrtbek4KAs0cs4YchZqGO5ewPVCYm5JLjB+zSn3QEXLecHA3eHun
	BSZ0f8d4bzgNGZmLacPvA4/RDcXz8AbkVAazoWuTPqETZvweZYulsjr0inT9Lws35tDr
	VkqYWXrXMMd9Wv/YB9mfXtaqydWfi6v7JA0VnI8vASQDxqRUsl0+TaPlFoWKkICFjwJv
	cVplXJWg0gNhqgh10Tcvmy2dioMtgu8s4FenhgKyVWDDP15BuG3TwmjG3P33l2kc8xIe
	orxg==
X-Gm-Message-State: AOAM530437fhI3XHB1CzT9vDYuKmbDACGOV0J6A0NmyrLIJzkP6UJ+xn
	I5SEBp+H/BfOLNZuW64GT9+CZ5EW481iJDH1WPqm25R+
X-Google-Smtp-Source: ABdhPJwQbXQCPm7N7wgeudfrCCsCmd2PPA/QOCyG6ap6/DVXkAJID3Q7sEbeag7R5FJKHY++alNLnuT3YeDkAwfr3Nk=
X-Received: by 2002:a05:6214:5286:: with SMTP id
	kj6mr815006qvb.50.1638899188306; 
	Tue, 07 Dec 2021 09:46:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP;
	Tue, 7 Dec 2021 09:46:27 -0800 (PST)
In-Reply-To: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
Date: Tue, 7 Dec 2021 17:46:27 +0000
Message-ID: <CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
Subject: Re: Other lightweight WM?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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

I personally use the fast, light window manager(flwm).

Granted, I'm using a script provided by my distro that lets me launch
Firefox+orca in a very stripped down Xserver rather than anything
resembling a desktop that can handle multiple GUI applications at one
time, and the only thing I've figured out about the script is how to
change which window manager it uses(it defaults to compiz, flwm is the
smallest window manager I've tried that kept Firefox+Orca functional).

Also, flwm uses alt+delete instead of alt+F4 as its close current
window command, and this is hardcoded. If you want alt+F4 in flwm, you
need to compile from source with a non-standard config.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

