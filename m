Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0AC451738
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 23:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637014281;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ieQnBYUtByl0XlpxBlf2zZJ0JO5yOAAiPLfKdlkCURA=;
	b=JzcSkgkW5C0e09dffGaXdwRFjz2bAghNLSUZIxxkQRc0EIstNv2PPVE2plPSZKibx5SKfq
	ISAB0+kzzYE78lXCwIoDsPRpuEB0fFpm4b9mvDhcdDToJVWP6j19id1JTO7e0plIhhZuIf
	/8h4WeM0MdivjIO5dQZPLNA/kPSTnBY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-_KPZtcRcNXaIqwhFnbHaXQ-1; Mon, 15 Nov 2021 17:11:16 -0500
X-MC-Unique: _KPZtcRcNXaIqwhFnbHaXQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6EC8287D542;
	Mon, 15 Nov 2021 22:11:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81B3419723;
	Mon, 15 Nov 2021 22:11:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C9FD1819AC1;
	Mon, 15 Nov 2021 22:11:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFMB5pK025780 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 17:11:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0573151E4; Mon, 15 Nov 2021 22:11:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F06AD51E1
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 22:11:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D84B21066561
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 22:11:01 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-328-vxOejitnNzOUXvpeXr9o9g-1; Mon, 15 Nov 2021 17:11:00 -0500
X-MC-Unique: vxOejitnNzOUXvpeXr9o9g-1
Received: by mail-qt1-f173.google.com with SMTP id j17so17113358qtx.2
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 14:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=xwqsMABK2uOm/y37IaNPE2imuXvE6xBph77fWfCdAKI=;
	b=6yXW+aai3c4Clc/hNbbbLnvySg+igSzsl8Zu6v49efcOsxU+ULImKYius3yiik8upI
	gVgUfb4Co4dd4MEFlLoMFvTgwBJGCtVIZY/ygHCPC1HJG4b0Gt941ZZp8TeEtmlJDIdP
	8e+5bNjiIxk+NrIUnNkw0Qf0mpJ/MRIMg1f1XffxRuCMOm77o8t/EHTM2XoZPu4A17T1
	iyUTuW38/NGnTQd/VEHK7r/8xJCbF8lH6GrkZX/20WRKBACku/0l2FwMP8lkTsos7eA4
	APNEdy2tx0W3+DNXUk/4ycYz+s/r4eStUOGxJ7LW8ARHSo1y+nZBHvVLWzSLxjHxNh2N
	HOvw==
X-Gm-Message-State: AOAM533+DtJp1lrFePSZ0oJGp0QQbzWIweALqp8/Lw6jW8hgd6w/VUl3
	EAN2jeAvLIP0BmXCjHdmtceME8fU3ZI=
X-Google-Smtp-Source: ABdhPJxAZCED4m3E94TnzGXoa7eHi1GjkyAK92vTefITA3gNOAlDHHTqPe8ReUz/8VDOFmVr2kHLKQ==
X-Received: by 2002:ac8:5d94:: with SMTP id d20mr2494899qtx.260.1637014259647; 
	Mon, 15 Nov 2021 14:10:59 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id 8sm7387918qtz.28.2021.11.15.14.10.59
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 14:10:59 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <d5cce23-86c-16c1-f43-18a8201c9210@gmail.com>
	<alpine.NEB.2.23.451.2111151623590.26447@panix1.panix.com>
Message-ID: <2556910b-0065-1987-2ae9-e6dc47c317a6@gmail.com>
Date: Mon, 15 Nov 2021 17:10:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111151623590.26447@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Alpine has an export message function. That message is saved to a file of
> your choice.  You can then background alpine and open that file say with
> url-view and get to urls without screenfull restrictions.  Also use
> probably in mate atrl to read that exported file for any other needs.

Woe ouch. I think I'll just stick to Thunderbird and/or Seamonkey. I was able to 
set it up in a minute or two, and I can just collapse all my threads, read the 
individual message I want, use the tab key or element navigation similar to the 
browsers to get to links, open them with the enter key in the browser of my 
choice, or I can even copy them and paste them into a browser, a text editor, 
another email, or even a shell in a terminal if I want. All this in a very 
consistent way where all these applications have similar keys and functions. I 
do wish Balsa, Geary, Sylpheed, etc worked better with Orca, giving us more 
choices, but I can already see that Seamonkey tends to be much faster even just 
opening the application than Thunderbird, so I think I've made a switch, 
although it is possible to keep both.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

