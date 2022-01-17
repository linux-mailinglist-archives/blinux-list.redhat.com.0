Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C78594900B2
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 05:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642392615;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/NrMth57ulQuzhf3ZQClJ4iEi8fbtubDp9IpP3pWi3I=;
	b=jSlLCwmZVuFEOSwDtEtPOmS8PvLUYbOq5nMPgQS8TuXmUSZnNP0NxyQ1Yyxk4Z76hl+HpW
	J/pB2d7sbe4iLL9OYSLCX9dyyvEa+fIL6gaoS9lL/qGTC1mQ8cdkQvQCMJXfVZX+bb1h/V
	9p4PD2RNptHCqDQ3lN0/R42KbvPAvH0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-232-nqwT_a3pO6-3oTvzTSrW8Q-1; Sun, 16 Jan 2022 23:10:12 -0500
X-MC-Unique: nqwT_a3pO6-3oTvzTSrW8Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0334A1006AA3;
	Mon, 17 Jan 2022 04:10:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DC714D73C;
	Mon, 17 Jan 2022 04:10:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E897F4CA93;
	Mon, 17 Jan 2022 04:10:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H4A0FW012971 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 23:10:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 50AE9C07F45; Mon, 17 Jan 2022 04:10:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C304C202C8
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:10:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3268180A0B1
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:10:00 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-518-7TdGHeklPh6ItVOKoIH_YA-1; Sun, 16 Jan 2022 23:09:58 -0500
X-MC-Unique: 7TdGHeklPh6ItVOKoIH_YA-1
Received: by mail-qv1-f42.google.com with SMTP id kl12so17221828qvb.5
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 20:09:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=QCp+EdJ2tL5DEiYO9ak2ep/ofyDO0mVHCFR2HGGp8JY=;
	b=VIiINJXnExw7ufP79cyrRPUAzAGutRmN9lR7M2GPoNWzN+LoofHA28TH8srTTYeXk1
	PaEIaO89uOp86otFw4cjuexmC3R6aKK6Wx7gt6d93hspmj/poge2L3wQ6MwxMj9diLcN
	JZHW/YGlJWVv685eY0nvZloK9uDncOlR2h5iPCs4tJCVVFjoXm6IFOucHJnVgYsk8X7h
	RomHLruGb7F2fI/o9JDeuH5cZ9LhUit/Sv244T8j8xhbjNXulz6qbcNBhj0lkxYDxtRT
	suSs1KFocAX0ddWOaKI9n9LI0Q1OOr1t+ZZprVT2NEtS6190FSMHM8sshp6Lh3Rn4Ptk
	LW2Q==
X-Gm-Message-State: AOAM5301E4JZTtdpl9TtJQ8q+x//pjgp5GzeidbOLVrNxMlEmExbevR7
	bUzRKpuSxzd+rucev5hhAjCxB+eXsK1qTQ==
X-Google-Smtp-Source: ABdhPJyUgUYiQAS3S2roUN509r0ik9L759T77TDySCRyqEo0b4YHSqyiP5R4H14ScNcxHmSTPctSnw==
X-Received: by 2002:a05:6214:cc2:: with SMTP id
	2mr16602255qvx.29.1642392597956; 
	Sun, 16 Jan 2022 20:09:57 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	t21sm7430266qtc.46.2022.01.16.20.09.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 20:09:57 -0800 (PST)
Message-ID: <0b3c959a-d5ec-1050-81d6-37df390e1fd8@gmail.com>
Date: Sun, 16 Jan 2022 23:09:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: looking for accessible music library app
To: blinux-list@redhat.com
References: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
	<84DAA8A1-78CE-47C4-A4B5-F717D2DD25DB@icloud.com>
	<ae4dc9d1-d6de-0319-e682-ab489f86fd81@gmail.com>
	<b82ed2ba-dd41-5346-dc79-86765e15de95@hubert-humphrey.com>
In-Reply-To: <b82ed2ba-dd41-5346-dc79-86765e15de95@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Of course we can run Musicbrainz and such. But the filesystem 
organization method will allow organizing files and directories in 
whatever way we want, even if it's based on information that is not 
available from Musicbrainz or a similar service, or even information 
that cannot be put into tags. Library databases are actually quite 
limited in what they can sort on and how they organize music. Best I've 
seen is genre, artist, album, title, maybe release year, and then 
there's "all songs" or similar. Nothing matches based on country or 
continent and other external information that is never put into tags.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

