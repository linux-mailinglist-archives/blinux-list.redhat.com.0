Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2F73A3FA
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2019 07:53:17 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id C1C662F8BDE;
	Sun,  9 Jun 2019 05:53:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 857095C241;
	Sun,  9 Jun 2019 05:53:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B7807C57C;
	Sun,  9 Jun 2019 05:53:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x595pcW3000516 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 9 Jun 2019 01:51:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9FA6D5B685; Sun,  9 Jun 2019 05:51:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A4A65B681
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 05:51:36 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B61F77FDE9
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 05:51:27 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id j2so3420783pfe.6
	for <blinux-list@redhat.com>; Sat, 08 Jun 2019 22:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=CLreeJpKpqwByyCWx1k2P/0d2AD9f8S6ATfTLQzf0+g=;
	b=t12f4VpYPnF8wzhQ3yiBwfQRpIsDh4BU1Z/zC6dDztjRhn2J3N2zJliQSI1yhm4m8q
	JHZFg8qOiHS1SOllPBvDB72KvhcmRjjtuMndrkqrH5Eld+3N+2fTX5EhaVCKAj+fRcvP
	Emd33bGni/vznBVgS1z4c5xCdAmY5BxZ5xKCHAT0cHEQbCPJcGm+vNI4fvRR11TnAJFV
	5CrfsQvxwSL3M7C+RgQ8JeHDZHe2lNfNgzFd5B4JmIZHP030d8n7dqhxuhKFYaGBCHUU
	oxMKXjqTFfW9tMdWkytG9cjYdntgfx0levFAqyeCjzP/P7r2H/FvWYBH3Woh7bDpKS5Y
	dpWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=CLreeJpKpqwByyCWx1k2P/0d2AD9f8S6ATfTLQzf0+g=;
	b=cpgTZSN6xnQ9Ebeyo+4fURlmtQ4zWwBwB/qnH8dFfTJLITMIUBRx8r55QHGjkLXDkL
	tlIkQIPHVs5bIMjwq3Gz/6dejDQy5mPHqMt0Rk1cyOvOwqsB7+EVztpLkiwagDjufzKq
	D1+V7o25hzCs5l+pwjB+UYOT9UNCqQqyShM571tolrW7utz8xuGv8tvUXjrEUjZZYvpy
	UC7hlLdfnOJzavgJP2qFTwBma1Cl/PINwa+C9utmGIpcAamX5vb7SmWWq+YQFyxT7eLW
	o+Wb1FRr5KMIjWE6AfRBQetjHnMET4oCzd9g6Rk+WuMVLPbmmGFcHPbml9yQUfEvfyGB
	Bo/A==
X-Gm-Message-State: APjAAAVCboyIJo5vnk7nBIQwLneXCebwcoQUth6VOjqhRyR3jptnVkyE
	7jj081VYxqItUk+m3t9r5y2t4uGl
X-Google-Smtp-Source: APXvYqxOz9HvLZhWbpszCPCwuJ22UO9Bb2kB5O7FjWzR2HPSpcJ/uKivR+NwV1FCdDsVp/mPCO3lzQ==
X-Received: by 2002:a63:5f0d:: with SMTP id t13mr3744436pgb.358.1560059478662; 
	Sat, 08 Jun 2019 22:51:18 -0700 (PDT)
Received: from [192.168.1.181] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id p43sm1062257pjp.4.2019.06.08.22.51.17
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 08 Jun 2019 22:51:18 -0700 (PDT)
Message-ID: <20190609.055021.701.16@[192.168.1.181]>
To: blinux-list@redhat.com
Subject: Re: Audio Recording
Date: Sun, 09 Jun 2019 00:50:21 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1906090142180.26372@panix1.panix.com>
References: <20190609.052602.869.15@[192.168.1.181]>
	<alpine.NEB.2.21.1906090142180.26372@panix1.panix.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.27]);
	Sun, 09 Jun 2019 05:51:27 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Sun, 09 Jun 2019 05:51:27 +0000 (UTC) for IP:'209.85.210.171'
	DOMAIN:'mail-pf1-f171.google.com'
	HELO:'mail-pf1-f171.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.109  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.171 mail-pf1-f171.google.com 209.85.210.171
	mail-pf1-f171.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x595pcW3000516
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Sun, 09 Jun 2019 05:53:16 +0000 (UTC)

That program doesn't seem to be in the repos for debian.
Where do I find it?


----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 9 Jun 2019 01:43:51 -0400
Subject: Re: Audio Recording

> On cli I'm using aarecord with some parameters so we don't record a .wav
> file since size is limited.  The wav file you can record you can use to
> verify your microphone's volume once you listen to the recording.
> 
> On Sun, 9 Jun 2019, Linux for blind general discussion wrote:
> 
> > Date: Sun, 9 Jun 2019 01:26:02
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Subject: Audio Recording
> >
> > What are we using for audio recording on linux these days. In the gui. Is audacity still the best one from an a11y standpoint? How about CLI?
> > I'm interested in recording from line-in so I can archive some of my tapes.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> 
> -- 
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
