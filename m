Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEC2525477
	for <lists+blinux-list@lfdr.de>; Thu, 12 May 2022 20:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652378964;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=krbBgQjM49tLuM/oIvHK5FUuwKftN6ocU2P9Tn031B4=;
	b=ObptSN2j1Avc0pfom5a09qPgI7FOocdWLIqkHQkDsC5zM+rR2n46MH35tPGVKb23JPTbUB
	96wx9kKeDefU0Q0qdhtJWE3IpOgYPWPCAHhQl5+xmKpiziUG2i8UUof9iQ3/snHlqupwyq
	C4Q0AAHtva1TIZMvMygf1mjI+ARrGJA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-352-7rIeluQFP--RrrcIkggAEg-1; Thu, 12 May 2022 14:09:20 -0400
X-MC-Unique: 7rIeluQFP--RrrcIkggAEg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68F7F1C01B3E;
	Thu, 12 May 2022 18:09:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7BEE014C1D52;
	Thu, 12 May 2022 18:09:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C52C31932210;
	Thu, 12 May 2022 18:09:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: use of comm and sort tools
Date: Thu, 12 May 2022 13:05:42 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.14856.1652358930.111203.blinux-list@redhat.com>
References: <mailman.14985.1652352322.111208.blinux-list@redhat.com>
 <mailman.14856.1652358930.111203.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.14725.1652378954.111205.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is what I was after. Thanks.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Thu, 12 May 2022 07:14:38 -0500
Subject: Re: use of comm and sort tools

> Tim here.  If both files have been sorted, you can find just the
> missing ones with
>
>   $ comm -23 mp3.txt m4a.txt
>
> The "-23" means "things that aren't only in file 2, and things that
> aren't in common".
>
> If they're unsorted, I usually reach for awk:
>
>   $ awk 'NR==FNR{b[$0]; next} !($0 in b)' mp3.txt m4a.txt
>
> (note the order reversal of the arguments: first it loads the list of
> all the mp3s and then processes m4a.txt, emitting items that weren't
> in the mp3 list)
>
> Hope this helps,
>
> -Tim
>
> On May 12, 2022, Linux for blind general discussion wrote:
> > I wrote previously about ffmpeg and audio variable bitrate. After
> > conversion, there are some files that did not convert. I would like
> > to compare two listings and discover which ones are missing. So, we
> > have these commands: find . -type f -name \*.m4a | sed -e 's@.*/@@'
> > -e 's/\.4a$//' > m4a.txt find raw2 -type f -name \*.mp3 | sed -e
> > 's@.*/@@' -e 's/\.mp3$//' > mp3.txt Now I want to run comm and have
> > it dump to another file which lines in m4a.txt do not exist in
> > mp3.txt. How would I go about doing that? Or is there a better way?
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

