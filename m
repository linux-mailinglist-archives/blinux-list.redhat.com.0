Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5CE65407EEF
	for <lists+blinux-list@lfdr.de>; Sun, 12 Sep 2021 19:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631467727;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5asfaQr1aux9Xf+049+Upx7rrM9yDC827Yh52JENUwY=;
	b=A2anM1+q9b763+3/Vzzux+2bvIrnIQiJBTSaN5CADhPThpx0xL92wsZRvtHcwxxJNSnfYM
	kGScGudP6LUxZWIQUyslWr6Fp/tBYoEL/CAcPcfgMaSvKY82lpM/JkUsaQfb9deyuyi//e
	mm9jvESY/bf4NMvBmklIPrUDfQxa+PM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-YoJY36ZrOLSHqCxVG_Nk9Q-1; Sun, 12 Sep 2021 13:28:45 -0400
X-MC-Unique: YoJY36ZrOLSHqCxVG_Nk9Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 40EA110059AB;
	Sun, 12 Sep 2021 17:28:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5954660854;
	Sun, 12 Sep 2021 17:28:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 818FC180142F;
	Sun, 12 Sep 2021 17:28:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18CHSE4t029528 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 12 Sep 2021 13:28:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7731A4E623; Sun, 12 Sep 2021 17:28:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7144D4E3ED
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 17:28:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A45FE866DF1
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 17:28:11 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-219-HoluCNkpPdCo1Rsh6x3byw-1; Sun, 12 Sep 2021 13:28:09 -0400
X-MC-Unique: HoluCNkpPdCo1Rsh6x3byw-1
Received: by mail-lf1-f48.google.com with SMTP id s10so15888295lfr.11
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 10:28:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fhB1Wco4fpJgiwuogXGi5BAuU4z04+bD0JiFcgS8/Ko=;
	b=7vUia+qhJ89TwmwIEDh+9eHh6gcxdrCtyp7UHdWzej8C1iROi1wNiSEOi29O7evxQw
	X8jYTeU8T6EaI+PaLjwYwVYRN0qaEBAmwJmnQQbQq/JUgS3fpOPZoCHl2C63by/fbYWn
	N2HB9az3n/f7vLUTRqhF1qOxYAqr/wT1ASl4GbHgKdihiMsAkhr9rv3hyaGSLJjr0J5L
	/MmsIJKbpVHwcVQ90JB+JuUx2nQRET6Jug+ST1nMCvEbYxpklO4RGMDZ6QE5/xZMSmpj
	S7FvbgN+sLWxYbEuzykJIjTz/1Klqhiy/ZGXimF8y5wJocGAYtHOUNdW0J1BYtWe/H8i
	9Q+A==
X-Gm-Message-State: AOAM533cFPNbQ9BJjX+pEo9UPeMPtOno/gqBAC1vbmNnAov63opv9gBL
	lwXJsHPVGSYYZboxYuFqdgWXbodziqY=
X-Google-Smtp-Source: ABdhPJwrOt73xpwnDw9Q/ktg3npKmnl9/NGeg6txuDzkObJnXa1bFgIj7zrz8ys+UEzQmkZ+nUZjRA==
X-Received: by 2002:a05:6512:320c:: with SMTP id
	d12mr6108901lfe.8.1631467687923; 
	Sun, 12 Sep 2021 10:28:07 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	q17sm572468lfo.232.2021.09.12.10.28.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 12 Sep 2021 10:28:07 -0700 (PDT)
Date: Sun, 12 Sep 2021 20:28:06 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: best gui vm managers
Message-ID: <20210912172806.5dzxk7e3sj4u73it@alex-pc>
References: <20210912.162536.058.3@[192.168.1.100]>
MIME-Version: 1.0
In-Reply-To: <20210912.162536.058.3@[192.168.1.100]>
User-Agent: NeoMutt/20210205
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Sep 12, 2021 at 11:25:36AM -0500, Linux for blind general discussion wrote:
> I'm looking at throwing another 16 gb ram into my linux box, and then switching over to it fulltime, running a win 7 vm for those times I need windows for something. What's the most accessible vm manager? VMWare player? Virtualbox? I'm on arch.
> Thanks.

I am using qemu with libvert and vert manager. it's the best option IMO.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

