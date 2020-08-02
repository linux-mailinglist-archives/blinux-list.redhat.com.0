Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4FA5A2359B5
	for <lists+blinux-list@lfdr.de>; Sun,  2 Aug 2020 20:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596391714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jLTZTxxzpMvNs6ABkeAO4qiSeTP7w6xA47nuMlcjF8Q=;
	b=jVD55E1qReCb/FoyZ2QOGDWuRXfV5S5a4jEETgWoqD3eGexcQET70V96KvwmmzzLbJFZYh
	JpOI78RJ+W+Zs/qISfD4R5LfFg1BfrWtp/7joiqEb5l/RRuyR5NdG6tfg+euVuhre4PPnM
	Av8MopBrn6jnzyFDfFhnjCrfYsWjhqk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-jOUn0iqfOBGArTxsjGPWvg-1; Sun, 02 Aug 2020 14:08:31 -0400
X-MC-Unique: jOUn0iqfOBGArTxsjGPWvg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAF2C805721;
	Sun,  2 Aug 2020 18:08:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D87987E1F;
	Sun,  2 Aug 2020 18:08:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 37EF89A0E1;
	Sun,  2 Aug 2020 18:08:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 072I7UIq011753 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Aug 2020 14:07:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CCA7120234B2; Sun,  2 Aug 2020 18:07:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFE2820234B0
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 18:07:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A40138007C9
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 18:07:27 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-255-uJ8u5LKjOmOpaP6tvGtwjQ-1; Sun, 02 Aug 2020 14:07:25 -0400
X-MC-Unique: uJ8u5LKjOmOpaP6tvGtwjQ-1
Received: by mail-wr1-f42.google.com with SMTP id 88so32150780wrh.3
	for <blinux-list@redhat.com>; Sun, 02 Aug 2020 11:07:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Dj5LYrZwYb7PaTU7mgVHTRLFcg73ST2TyXNlBLqntEU=;
	b=RtHl9But+iFH5yvr9yj7XGuam2A4F9FR5xFbrGt//amT1MWBKBORUzqLCAYVSqZLD6
	5A9vdLFyEdUwVy3eQX6wkh8BqjiyYBzwoLqpN1qVXdGMtNBPZZpNuZ+WQgtbXFeJTXxv
	8S7qVFxl6pYKqElxVlabUG1Ci1ZAGDr89YW5zwJ+gkWo6z/vm5Wnvm/0NGPJytUipQ7S
	EOV4fgRUQaDjmEwW4mS9sUJNP4UVruP7j15A3Rllnr1ZJN0NkzUHcO4X9MJxRkSIrmWa
	CcNydU+Vx9qqRAeBT10BaaMOJ/80bmLuc/JaOYQiYtDaeyrtZP8rdSrDw9cFHSrTRDT/
	PLZA==
X-Gm-Message-State: AOAM533WO7azOmwZqJTM/soysU5BM8HH5agmH6381I0i9DvYiPQDO3dl
	sUYje43brFApb/0tdPMfI+HDYs/gNxMuyRwqH1yf3Q==
X-Google-Smtp-Source: ABdhPJwGSqCkDX8DCBD8zzIhqFLj3lxUQc3v4cpxMK4qRMczvxOpoQvrCGNXvg2mPjs9o/Uhqy5ptEDqzed0K+SbVUQ=
X-Received: by 2002:adf:e902:: with SMTP id f2mr11674566wrm.174.1596391643939; 
	Sun, 02 Aug 2020 11:07:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6000:11cc:0:0:0:0 with HTTP; Sun, 2 Aug 2020 11:07:23
	-0700 (PDT)
In-Reply-To: <b23cc713-7308-d323-14d1-594b83c4f781@gmail.com>
References: <CADj8Jxeftx5wEP7BBgW5rgr2=vhn2R==8EyBd+QZWN4-1G8Stg@mail.gmail.com>
	<b23cc713-7308-d323-14d1-594b83c4f781@gmail.com>
Date: Sun, 2 Aug 2020 14:07:23 -0400
Message-ID: <CADj8Jxd0Qhx7izEnbpAZHaTRWV9xc_0NS81C8zDGF295XXvKxw@mail.gmail.com>
Subject: Re: tips for using gnucash
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did a bit of research and its easyer to enter transactions using the
transfer window rather than the register. I guess that is more for
reporting but then the documentation is not really clear on that.

On 8/2/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> It's possible that you can download your transactions directly from your
> bank. Most banks allow you to download csv files that you should be able
> to import into gnucash. Of course this won't work for everything, and it
> certainly won't work for cash transactions. I haven't needed to use it
> because my bank has a web-based unified system that imports from various
> types of accounts automatically, and I rarely use cash, so I just keep
> up with that based on what's in my wallet. But let me play with Gnucash
> a bit here and see what I can figure out. Perhaps it will work better
> than my bank's unified system.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

