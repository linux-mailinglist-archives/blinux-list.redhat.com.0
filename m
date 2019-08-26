Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FC59C719
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 04:00:55 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DFE6B10576E3;
	Mon, 26 Aug 2019 02:00:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CE3919C70;
	Mon, 26 Aug 2019 02:00:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD2391800B74;
	Mon, 26 Aug 2019 02:00:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q20hsh016087 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 22:00:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 64A7C5D713; Mon, 26 Aug 2019 02:00:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx30.extmail.prod.ext.phx2.redhat.com
	[10.5.110.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5DDAA5D704
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 02:00:40 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com
	[209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DD8C17F749
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 02:00:39 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id 1so6020418ybj.8
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 19:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:from:message-id;
	bh=z+j4L82QIPvLlPFLbuD9HVzldiK+wouQAK8jYjIa3/g=;
	b=ZHwxEUVToAEisaZ8s1cy3EZcIQhINCM3q37SCOFL13eJ3crRfy0T07bPmrBd/6yd0I
	lHKtmB1Z8oAsV8AaIjHqcVRQKQjDApQdYhpzQumSMOzoa/3c8yAHgBOLQMstDpuhG1oO
	gYu9bkjvnWbgJO64x2NudShZWWOHcEHZdPolTXgnmvgNOLQNwkB1uPEk5XW+8QYA10N6
	vUcJZgudf2HfSXwMfRE1UEu9I3wxG+cgVf0k0LuZglZaSxOhUSR/as+PkoS0gBbvEUtW
	FLytpQxKPlfsPExNICepLBDNVbYwTuFbMpZAFkGKW6nX4ht6gQN4Dlv1KtaySr3Fu5Cv
	euOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:from:message-id;
	bh=z+j4L82QIPvLlPFLbuD9HVzldiK+wouQAK8jYjIa3/g=;
	b=sw3YrldKOD22gWwmGCJ8z1nlaCU4XBcmzDMIwaGFbFqIO0y3WU7eCppKKvpz0AOAFm
	OCDJG1+KPV0leNaclvMnXrA126hr8Pvajaf2o9v3SdeAh1B1ejRm6CumhAZGuP1jL92j
	2t2FGcp5kXILlKg0c2IspFDayG5QHno45uQy+69OoLeZ23EoYcFzAurxiRtIMmEEDiA8
	PBrrg4IdPRRSGfy1/jTb3/8WHZB+uKBzMAqhCFlRb8nvsy0ONOo2BJeqx/d2eA7ZeFXn
	3tIxU55+MHSqYR0dd+ZbauZyxVRx4gtPMTSnlWyT7McvAhrv295f4Ae34xuoqbiHLAQQ
	5jVg==
X-Gm-Message-State: APjAAAXpqWsqNhGnTEx+Jk3db1xu5vCd00l84dJOjAnsWf0rWRnbwmJU
	38E0hP3oLXljj8bPw/zVnCZoeRmUILQ=
X-Google-Smtp-Source: APXvYqyPulsA5iFGMM7P/6VN6Kjwn2hqduV+4ibjfLAdIhG4Qwt53917TReH5hHQndEZQL9No/9lGQ==
X-Received: by 2002:a25:8505:: with SMTP id w5mr11269630ybk.426.1566784838693; 
	Sun, 25 Aug 2019 19:00:38 -0700 (PDT)
Received: from android-6116dfaa305bca74.lan (cpe-75-189-192-174.nc.res.rr.com.
	[75.189.192.174]) by smtp.gmail.com with ESMTPSA id
	s37sm2082588ywa.98.2019.08.25.19.00.37 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 19:00:38 -0700 (PDT)
Date: Sun, 25 Aug 2019 22:00:29 -0400
User-Agent: K-9 Mail for Android
In-Reply-To: <Pine.LNX.4.64.1908252054480.12148@server2.shellworld.net>
References: <20190826004808.lapid7qsq5dili2u@prl-debianold-64.jexium-island.net>
	<Pine.LNX.4.64.1908252054480.12148@server2.shellworld.net>
MIME-Version: 1.0
Subject: Re: latest lynx  ANN: lynx2.9.0dev.3
To: blinux-list@redhat.com
Message-ID: <4F2EC260-5157-43BD-95C3-F3BEFC09CF5E@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.71]);
	Mon, 26 Aug 2019 02:00:39 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]);
	Mon, 26 Aug 2019 02:00:39 +0000 (UTC) for IP:'209.85.219.182'
	DOMAIN:'mail-yb1-f182.google.com'
	HELO:'mail-yb1-f182.google.com' FROM:'kyle4jesus@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.219.182 mail-yb1-f182.google.com 209.85.219.182
	mail-yb1-f182.google.com <kyle4jesus@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.71
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7Q20hsh016087
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]); Mon, 26 Aug 2019 02:00:53 +0000 (UTC)

So Lynx just got an update today that adds HTML5 support. This means that yesterday when I said it didn't support the latest web standards, it still didn't. It doesn't change the fact that in order to implement accessibility properly, text-based browsers must jump into the end of the first quarter of the 21st century, rather than forcing web designers to essentially double their code to comply with older browsers. Fortunately, it seems that Lynx has begun taking that step, and its developers are to be commended for this. I will conduct tests on my own website, which I know correctly implements HTML5 <audio> and <video> elements, but has a fallback to download in older browsers, but that nearly doubles the size of a couple of my pages, because I have to link to the files twice. If in fact this is now working, I can remove much of that compatibility code and just use standard and properly implemented HTML5 <audio> and <video> elements, as was my initial plan before I found that many un
 derdeveloped browsers still didn't support the proper implementation of these elements, which have been a standard since 2012.
Imetumwa kutoka mkuu

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
