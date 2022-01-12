Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4CC48C4CC
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 14:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641994095;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wvtuGRl1eWrazkgXjE5P3NhW7AI4cpLS/wYciKeWA28=;
	b=I1qt2tSn7NxZeQQyfdmOA+6e3TY8CfiChWO34UAW5/dO8AFJWDtaiFZU60LR5XzcuyEtub
	wHOB+ZvvoDIVMvZ4rNk4XOxQ9rlzl3bjDCb8cBohpH7w/cmsznwi59PpCCcunaHP9mmKhv
	mJlQqo/oeBeHLHNjGdoUEgK/q6q+zi4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-VgBIkyNCMf2CCS95rMGmxw-1; Wed, 12 Jan 2022 08:28:12 -0500
X-MC-Unique: VgBIkyNCMf2CCS95rMGmxw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8831983DD26;
	Wed, 12 Jan 2022 13:28:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8305105B206;
	Wed, 12 Jan 2022 13:28:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 020B51806D1C;
	Wed, 12 Jan 2022 13:28:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CDS204014598 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 08:28:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D8B152026614; Wed, 12 Jan 2022 13:28:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D405F202660C
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 13:27:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B41D823F8E
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 13:27:57 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
	[209.85.219.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-639-tqH31EDBOUaq-agClHY6yg-1; Wed, 12 Jan 2022 08:27:56 -0500
X-MC-Unique: tqH31EDBOUaq-agClHY6yg-1
Received: by mail-qv1-f45.google.com with SMTP id hu2so2851529qvb.8
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 05:27:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=43VJNYYzyPxJt5GhAyNfB8cPU8uNvvcdNjeCPjYXGK8=;
	b=qDPdiomno+2nwxEUzCO+rLnwj0zagG0KPT494/h/29emQZ3KoT+fjumdGuPd6LuOay
	CN+wpP/KZe3lhhBHUCc4+YlUe4KRZ9PLXDbLhpWJVQfmXZpcWo42Kojke9iNQtMQbhMx
	6uAYDw9R0/UdjgCkAcbsg5wN5RCiwmtZc2tcwQDrgPJRCKufUpmK1nNC+bX6i2oDF9fl
	p029bI76X4fI1WY5/emKlOZN1PdMYKgsjTyFPn7685vsOCNFAuG8GFfyZxkC/XlBl3L6
	63UW6G+YJSlfb7BU65/szk3MMP6vofGtzLoPFyNwUBTlCJ+zq6HhG5T85N+lAItP/6i/
	FLQQ==
X-Gm-Message-State: AOAM532nuApL/TZCCpCjyJqlsfDKxdMdt7I1gAVykPKiIaDXGrE8xl4s
	doenU8MSQkSkd1M2uK7i9K9F9AkgvJtwXg==
X-Google-Smtp-Source: ABdhPJzndItEszd1Wsj81s6Qf1C7ZyeooU/Q1B7O/HOADyMnJmveULC9aP36RTjd8ixnVH1rL8DJ/Q==
X-Received: by 2002:a05:6214:529d:: with SMTP id
	kj29mr5323419qvb.3.1641994075425; 
	Wed, 12 Jan 2022 05:27:55 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	m20sm9174364qtx.39.2022.01.12.05.27.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 12 Jan 2022 05:27:55 -0800 (PST)
Message-ID: <15e33618-54f2-8516-271c-a3b050dc6d20@gmail.com>
Date: Wed, 12 Jan 2022 08:27:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: MPV problem
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
	<ff09d0ee-685d-97bc-4691-fb9ee4aa2fdf@gmail.com>
	<030518a4-9ddf-fb4f-61d8-a578520c902e@seznam.cz>
In-Reply-To: <030518a4-9ddf-fb4f-61d8-a578520c902e@seznam.cz>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You can try running the file in a terminal. When you save, the time you 
saved and quit will be printed to the terminal above "Saving state." and 
"Exiting... (quit)." Also, it could be a file format issue. What type of 
file are you trying to play? Audio (mp3, ogg, opus, flac, wav, etc) or 
video (mp4, webm, mpg, mkv, etc)

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

