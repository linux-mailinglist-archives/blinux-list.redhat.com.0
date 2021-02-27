Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DCAE7326F7B
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614466732;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LYjNFLQRUOOy06zyn/xc2tKf8mvs/U1xCFFLTXDCUcg=;
	b=eTmetSZ9ILc6jk4dDjrFCrg99Bq7QnE2e9oJzUSTYEy9FnAw7D/f7sr+52n9MRPoIBLlRh
	qSdqWq0XK9sOgYpLOYFz9mtNlk2uC9Z455ucYgDn4vQq5wxs3fymc1XV7Oo5Yic9YcTjEF
	b4pzHXodDGVVKnfe9mkCMi5Zu/GwqTk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-XghvcfZ4MJKyYei3ZqtpWw-1; Sat, 27 Feb 2021 17:58:49 -0500
X-MC-Unique: XghvcfZ4MJKyYei3ZqtpWw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BCB89185A0C9;
	Sat, 27 Feb 2021 22:58:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E46A2A2EE;
	Sat, 27 Feb 2021 22:58:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0AFD018095CB;
	Sat, 27 Feb 2021 22:58:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMwfUF020352 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:58:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7EA04112D170; Sat, 27 Feb 2021 22:58:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A50B112D165
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:58:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7CE1800883
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:58:37 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-432-jAvMCH4eMSGJ2jK_t15oig-1; Sat, 27 Feb 2021 17:58:34 -0500
X-MC-Unique: jAvMCH4eMSGJ2jK_t15oig-1
Received: by mail-qk1-f176.google.com with SMTP id z190so12957308qka.9
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 14:58:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=hv1KolCc6ta5nhy9oM+FDJqhn9zLrKTbYXeuHOPSATI=;
	b=oThmtJLfnPZUjpIvCjY4E5yt7q9h/Gh2gf3Ib98LNwGvqq1jL4YNC4RR/SrNgiolme
	uCg5l77fPj1KoKr2S2qqPq7Fjd8OctBm0JdrTRK+Wt6bEB3A7adrQp3YMmM0Cj/8ich7
	OMkl3+2Ock/HJBKUBakEHWY4m9Ju3dx35V2UZVZehkSeoPzk/T7FShQlBy1SM/v4VfsW
	kKZuSNt2O1lObcBBLCv745jFOTkRttPqHhUQSgqFNliTb2YgXVtpAa5L2pUGnhdLo7as
	h327wFo26ZjzYjFjMjMSc0NcNWery6dXZzyxOurIqdZKGfLsCsr4SzJpb/dToeiAiSGQ
	phxA==
X-Gm-Message-State: AOAM532N86XBVmeDV1o/8r9fuOlXGOWONL2pcwxtfEDuuEGKzq/52CCL
	VuZU5vNg+V1MzGFBZsKIrsp4emnuENA=
X-Google-Smtp-Source: ABdhPJyjdmkvCTJf6TxUTxLefYLhUkE634QA32GnX21JTMLA25BfLsygEWD84/A0kdjZ2hFD08aipA==
X-Received: by 2002:a37:af05:: with SMTP id y5mr8882870qke.227.1614466713630; 
	Sat, 27 Feb 2021 14:58:33 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84])
	by smtp.gmail.com with ESMTPSA id f8sm3791880qkk.23.2021.02.27.14.58.33
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Feb 2021 14:58:33 -0800 (PST)
Subject: Re: Running Android Voices in Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<161444979750.8.5402375494901459390.4266338@simplelogin.co>
	<161446448778.8.10629460359382025123.4270314@slmail.me>
Message-ID: <9e540adc-e731-7eac-696d-36130365b49f@gmail.com>
Date: Sat, 27 Feb 2021 17:58:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <161446448778.8.10629460359382025123.4270314@slmail.me>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The female English voices in RHVoice are clb and slt. In order to get 
them, you just need to choose one of them from the person dropdown under 
the voice tab in your Orca preferences. Those voices are pretty clear 
and fairly easy to understand, but they're not as expressive as bdl ... 
they're a bit monotone ... flat. But yeah, they aren't bad voices at all 
really.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

