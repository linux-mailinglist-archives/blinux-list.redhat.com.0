Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F09F3A451
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2019 10:17:12 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 69CF680F6D;
	Sun,  9 Jun 2019 08:17:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EEFD5D720;
	Sun,  9 Jun 2019 08:17:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 49C0F206D1;
	Sun,  9 Jun 2019 08:17:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x598H3D0027460 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 9 Jun 2019 04:17:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 668C060BE7; Sun,  9 Jun 2019 08:17:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F74B60A9B
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 08:17:01 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7D0C57FDE9
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 08:16:58 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id s27so3392199pgl.2
	for <blinux-list@redhat.com>; Sun, 09 Jun 2019 01:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=IDSdbDA5go72D2MO4ggDPiU8ET0uVadoFttimCwpqM4=;
	b=SWmcBg2/i28BI5ftzqomBVosd6cSb+4e/YtyfTgCks7oY/zFtExpwQCCasemLoWiL5
	LoYjhHuFUZE+vlSFvhU7NJpY+d+ydoal82rIY43khloph+NDXF9lRdkJIkBCzqxhv38+
	eXsY2yW8WxevEAANxmF6P3GZ5n8pi5/6O9CPhmJS/kd/ClYWxF36srbNoRi5+RxU8kGS
	EZASH3o3vj/5ewqgj5WXtD/gnAtTgXzTGz6ZCSL4JYgj9sW0T0bSqt9S9Y/cgaw1X4Zh
	ZHXpCgZFvcAgSV+IAkuwWNN7gG1dZaZ9EpzMO027eDsgmF3+tbFf8QQL+IOaonlkAx56
	gfyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=IDSdbDA5go72D2MO4ggDPiU8ET0uVadoFttimCwpqM4=;
	b=sPHsDq+YqTNG5ik6YkfATparO3KCzd2GuVJvGmwWL8+q/qy+sE3L//aSpgZTvMc5AJ
	wFNPF0S0nPEvGb/2ZRFCzSU/hiQ8w7cg8BZkzJg/2jzdsvIasWzdoqPRqHpLP8i8bF1b
	UwTpTZIRjgm9bUdPJKZ8sHMnh+i6tl+31hzwDOkFurJX8V/7DKAOtA6yAkUhQTG6SCI7
	oBl6WS1ilDSDjmvssrPs6twbyw5iL41bw7Z/Q7gV3xyOfFlVDY53/9CM9pc8JrBf1MEE
	jkyNIupbeM71W2lhz7vvzR6NUAi9KkHfAREJgId9b7zmh1sA4D5z3kSAP+jevETQPBQg
	wlfA==
X-Gm-Message-State: APjAAAXs4rnMeslzploMumRvgnXwKqUwEAU2THD37t/UTUI+Tu5vEaoe
	jzJX8+vCcE/9xIY/C7BXixYhnHnR
X-Google-Smtp-Source: APXvYqx/hv8+hQoCtsDGxTLNsurzf6QTjgmtOk/vC4AzRp04R24Ald//VeDF9hufZ3tPdBnYvdAcUg==
X-Received: by 2002:a63:c203:: with SMTP id b3mr10352621pgd.398.1560068217491; 
	Sun, 09 Jun 2019 01:16:57 -0700 (PDT)
Received: from [192.168.1.181] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id
	j13sm6311349pfh.13.2019.06.09.01.16.56 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Jun 2019 01:16:56 -0700 (PDT)
Message-ID: <20190609.081559.973.18@[192.168.1.181]>
To: blinux-list@redhat.com
Subject: Re: Audio Recording
Date: Sun, 09 Jun 2019 03:15:59 -0500
MIME-Version: 1.0
In-Reply-To: <20190609073054.um4fm7ln56h72vir@sprite>
References: <20190609.052602.869.15@[192.168.1.181]>
	<20190609073054.um4fm7ln56h72vir@sprite>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.27]);
	Sun, 09 Jun 2019 08:16:58 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Sun, 09 Jun 2019 08:16:58 +0000 (UTC) for IP:'209.85.215.178'
	DOMAIN:'mail-pg1-f178.google.com'
	HELO:'mail-pg1-f178.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.109  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.178 mail-pg1-f178.google.com 209.85.215.178
	mail-pg1-f178.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x598H3D0027460
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Sun, 09 Jun 2019 08:17:11 +0000 (UTC)

I settled on arecord.
One question I did have, is there a way to hear the audio input source? On the old sound blaster cards, they had a "what you hear" option. So you could plug in your microphone or stereo and hear it through your headphones and adjust the volume accordingly.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sat, 8 Jun 2019 21:30:54 -1000
Subject: Re: Audio Recording

> > What are we using for audio recording on linux these days. In the gui. Is audacity still the best one from an a11y standpoint? How about CLI?
> > I'm interested in recording from line-in so I can archive some of my tapes.
> 
> Hi,
> 
> >From the command line, probably sox, ecasound or arecord. For
> example, ecasound -i:alsa,default -f:16,2,48000 -o:tape1.wav
> 
> This records from the default ALSA soundcard, in stereo 16
> bit depth at 48kHz to file tape1.wav. I think there is a
> parameter for duration if you know in advance, and you can
> also just stop the engine with Ctrl-C.
> 
> For multitrack recording in a terminal, I can offer a
> shameless plug for Nama, based on Ecasound. Nama does most
> of what you would want for recording, mixing and mastering
> in a text environment. 
> 
> A prolific user of this program has posted many of her compositions here:
> http://juliencoder.de/nama/
> 
> Here is some information about project:
> http://freeshell.de/~bolangi/cgi1/nama.cgi/00home.html
> https://metacpan.org/release/Audio-Nama
> 
> Feel free to contact me for support.
> 
> Joel Roth <joelz@pobox.com>
> -- 
>   
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
