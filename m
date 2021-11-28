Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 580A24602FB
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 03:22:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638066131;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1x5QuTpSq13cjbAd8reeJ4KAKhKl2zJARyiwMhpFhSk=;
	b=bBAWOeygYmlfq/0NaGBUs5ZIVqxLOmk/LeLF6lYH43Ec5OD6QVTG4gjg3LuaIVzceZF4Vt
	qcH7eSpE6QEWfoKAzPoqVDutFnpfY+7P6pIcRipLHfcdMSOhGaXhMAZk8stzKGlUNIdrjJ
	HQ4kgPzNi2hPO6295CkIUjXERx/E9uo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-281-XpLvFC1KO7aBCDsTjfVxEA-1; Sat, 27 Nov 2021 21:22:08 -0500
X-MC-Unique: XpLvFC1KO7aBCDsTjfVxEA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75BF02F22;
	Sun, 28 Nov 2021 02:22:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 199412B178;
	Sun, 28 Nov 2021 02:22:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 375D81809C89;
	Sun, 28 Nov 2021 02:21:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS2KZZ3013404 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 21:20:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4DBEB40CFD13; Sun, 28 Nov 2021 02:20:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4760240CFD07
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 02:20:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2BC7F811E76
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 02:20:35 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-181-JmWWDLxpO9qfISByO86OfQ-1; Sat, 27 Nov 2021 21:20:32 -0500
X-MC-Unique: JmWWDLxpO9qfISByO86OfQ-1
Received: by mail-qv1-f42.google.com with SMTP id a24so10818585qvb.5
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 18:20:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=RdqSWn3M7919czcV3uq112dF6Rq5Pz1imUT9+/OfhrE=;
	b=oZfrFD+SdrTtCzizwjAkFqcg4cF2kAYZzaJ8P4OgjJfm3veZRzwqivpR8UK9D3QTgr
	3VK/PBom2Br+T2FCWy1DB3LYKFmT5robYNTmHdAO15TRyEg+1eouQK6axhQbFx05TJbL
	Rw/d+pTTfCZef9uKgBH2Ym9fL2V60YJjV/8RVA3dHadBuI676wlzFoa7eIagI3V6B9Y2
	8IgOzOk2noG3wOEVywTGhbrSJEHb0FXrRh06v6xnQclurDSViq7lB6G6shB4x+Iz46Vp
	fguw2I70A8sPXlwwXJP7/ZmuVpVBxiQSljvS5Ys69fD2QHgzULcz0mdr2Fkc622mnnS1
	TG5w==
X-Gm-Message-State: AOAM531HlvQ+PMkZI61PiKE30jNX2P8eCAJMV5U67fbvWlQVmyyrBm7l
	673iCZ0gA3Iyy7KNr3FafDDh4kO4TKGfJqg070z92OsJ
X-Google-Smtp-Source: ABdhPJxStzKIr9nZckx7iRXkRuFjIox2KIVyJ4Q+/3WqI1gFxcYtOdIOCqCpgKuiI7RJHfHYlqobjm03jaBAyqZOPy8=
X-Received: by 2002:a05:6214:5286:: with SMTP id
	kj6mr34271501qvb.50.1638066032246; 
	Sat, 27 Nov 2021 18:20:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Sat, 27 Nov 2021 18:20:31
	-0800 (PST)
In-Reply-To: <7f5dab52-8e05-073e-11ba-4473b3aa7079@gmail.com>
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
	<20211127173705.fcq6hh2qbozygm42@alex-pc>
	<77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
	<188e6c5d-8c4c-5521-5d51-556423c3294c@hubert-humphrey.com>
	<c48bf756-d98f-0659-c826-76648ec82e64@gmail.com>
	<CAO2sX30Ep5qhUcuCYvg0X9vuVV9LQaZZEoe=AQ8G2C_ekcCfKw@mail.gmail.com>
	<7f5dab52-8e05-073e-11ba-4473b3aa7079@gmail.com>
Date: Sun, 28 Nov 2021 02:20:31 +0000
Message-ID: <CAO2sX30RPiScGep9w_CSihLY-CNgw4fWGDFB5p=izsC8yzsH8A@mail.gmail.com>
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Now that I think about it, don't some IDE offer tab completion on
functions found in a support language's standard libraries and names
of variables and functions defined within the source code file being
edited? It's been a long time since I used an IDE and it's a use case
that doesn't come up in an end user context, so it slipped my mind.

On 11/28/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> One place where I find tab completion quite useful is in things like the
> program
> known as doctl, which interfaces to the DigitalOcean API, which I use to
> control
> DNS for my website domains. This saves me a little time in most cases, as I
>
> don't have to log into the website and find the necessary links, buttons and
>
> controls to change a dns record. These days, I do this rather infrequently,
> so
> going to the website is probably fine, but I still tend to use the doctl
> command
> when I need to make a small change here or there, especially if I need to
> add a
> temporary TXT record that I will be deleting in a short time.
>
> This doctl program has a completion command that generates tab completions
> for
> various shells. So even before I authorized doctl to connect to my account
> for
> the first time, I just ran
>
> doctl completion bash >> ~/.bashrc
>
>
> and I get tab completions for all the commands and flags available on the
> doctl
> command line. So for example, if I want to update an existing record, I
> would
> normally need to run this command
>
> doctl compute domain records update --record-id 123456789 --record-data
> 12.34.56.78
>
> But with the completions in place, all I need to run is
>
> doctl c <tab> do <tab> r <tab> u <tab> --r <tab> i <tab> 123456789 --r <tab>
> d
> <tab> 12.34.56.78
>
> Yes, I still have to get this record ID, which is in fact a 9-digit number
> in
> many cases, but I can pipe
>
> doctl c <tab> do <tab> r <tab> ls domain.ext
>
> into a file and paste the ID I want into the update command. It is certainly
> a
> roundabout way of doing things, but it can still be faster than logging into
> the
> website and finding the DNS controls there. It would be really good to have
> a
> zenity or yad interface to this program, and maybe I'll get around to
> scripting
> something like this at some point. For now though, tab completion works
> quite
> well here once the completion mappings are added, even if I'm just copying
> the
> doctl configuration from one machine to another so tha I don't have to
> reauthorize the program.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

