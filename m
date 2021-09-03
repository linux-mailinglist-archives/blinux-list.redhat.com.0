Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C62C0400717
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 22:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630702141;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PDmyseejSWQDF5+Zoz7gCP/qNatPLMrYvxMiIdvf9FM=;
	b=avBYzCMgFzcT11TMV1f6SHqnTmG5J6gD/rH6K4XBnUi8H3ofDSCSKb2gGjdCcOKw0Bs+cI
	EoLS2BCqM80GQFJwOFXDSTFUu+ZxZqgNIXZu8AH4WbaxNcU1Bww1nCcVwhT/sqL8tMz8V3
	NGNOn8WbdrgfisxbyAirdRNlp7Yygf0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-k1OGzAaFN6K_1sgFgJiJLQ-1; Fri, 03 Sep 2021 16:49:00 -0400
X-MC-Unique: k1OGzAaFN6K_1sgFgJiJLQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26CDB8145E5;
	Fri,  3 Sep 2021 20:48:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41FF219D9B;
	Fri,  3 Sep 2021 20:48:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A19BB1809C81;
	Fri,  3 Sep 2021 20:48:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 183KVbah027806 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 3 Sep 2021 16:31:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4FEC12051B6A; Fri,  3 Sep 2021 20:31:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4864E2051B66
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 20:31:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D93A967621
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 20:31:33 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
	[209.85.216.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-342-kY3vyV3pOPSwit2NOUxX3w-1; Fri, 03 Sep 2021 16:31:31 -0400
X-MC-Unique: kY3vyV3pOPSwit2NOUxX3w-1
Received: by mail-pj1-f42.google.com with SMTP id fs6so327485pjb.4
	for <blinux-list@redhat.com>; Fri, 03 Sep 2021 13:31:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=iaT4t2gUc6HxUaaN7WwBiYyr4hebBgBXRWCDuzWJAhc=;
	b=snDm6PXKgdYMRWAQaFSABmf1cXs9ZG1dPauPpnCvEr80SCLDC9EF86Mm1cOnEGzhnX
	1kz56mTbCwSCViLQy2NymU36jQ4t7ESO59yc8ctI2ElpTONqdgpXTUjs//Zxzyn8vf34
	BNFFeH5VTNyTbYfD9FohON4BgFd2TIxQ9oK3/TwQTLs24k73Vvlepj+1ktMBQR1yKMbI
	EWGJvm7cSTlv35Dbn3Y1fB99v11JPniFNsxv/WVvjRL1Kqx04jECT2AVJ2QRh7TB0Ogo
	CHsvj0fsIBL40SCgVzkKKa13th/Ko/K5CYd0hYUqBZo5YKS07QfHY+E4h7ykS+rr0ipX
	V42A==
X-Gm-Message-State: AOAM533Lnfjtg6gvF5zyJYqmb8ncws8bdhsW7Q6/f7G8Eb26D/DGR716
	SGZ86vQDwvRmCnr4177H9v2zKQYVwo8=
X-Google-Smtp-Source: ABdhPJx+yizJozVLf1qAnVznB/zIuOQEhq6wZ+wCiexnsZ6DaqvFDUXj1xW46u9eJoGj/Jc2GXcVlA==
X-Received: by 2002:a17:90a:6ac2:: with SMTP id b2mr701004pjm.36.1630701089843;
	Fri, 03 Sep 2021 13:31:29 -0700 (PDT)
Received: from [192.168.1.10] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99])
	by smtp.gmail.com with ESMTPSA id y5sm244209pgs.27.2021.09.03.13.31.29
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Sep 2021 13:31:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: https://blindcomputing.org/ status
Date: Fri, 3 Sep 2021 13:31:26 -0700
References: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
	<75dd52ca-fee4-885d-8533-4eff739c47b8@gmx.net>
	<40F30BDE-AEE1-491B-8E8C-F8D958329702@gmail.com>
	<alpine.NEB.2.23.451.2109031453280.25910@panix1.panix.com>
To: blinux-list@redhat.com
In-Reply-To: <alpine.NEB.2.23.451.2109031453280.25910@panix1.panix.com>
Message-Id: <97AB29A4-7FA4-4D44-A975-934C2B47980E@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 183KVbah027806
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hmmm,
Well, if you have a separate machine (or even a pad), you can try to download another image. If it differs on that system from the ones you have on your current machine, then probably you had a bad download. Have you tried another source for the same image? Usually, if you have problems with downloaded files from one source, it is not as likely that the same error will crop up elsewhere (unless they are sending the same image to all sources).

Also, you might try 1 version back and then edit the appropriate files in etc to do a Distribution upgrade in place. I have had to do that with UBUNTU after they went to their new installer. Believe me, after several hours of pulling my hair out, I sent a not so polite email to the maintainers of Ubuntu and downloaded SLINT instead. Much nicer experience IMHO.

-Eric


> On Sep 3, 2021, at 11:57 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> status isn't part of that url, it's got a space in front of it and that
> should have ended the url.
> I ran sha512sum --tag on the iso and sent that to fail.txt.
> Then I deleted the iso and downloaded it again and ran
> sha512sum --tag iso >test.txt
> Then I ran diff -s fail.txt test.txt and was told the two files were
> identical.
> So one of two things happened and I can't prove either.
> Either I got a good download both times or a bad download both times.
> Had those files been different, I might have tried installing with the
> second iso.
> 
> 
> On Fri, 3 Sep 2021, Linux for blind general discussion wrote:
> 
>> Might be something going on in that particular version of Firefox. I am on OS X here as my primary and the Safari web browser doesn?t report any issues so far. Also, the /status at the end of the link provided in the subject above leads to a 404 error. Btw, Firefox isn?t very blind user friendly on anything other than windows or Linux. On OS X, it?s a real PITA and not worth even dealing with.
>> 
>> Btw, I use Firefox on SLINT here (I won?t go back to Ubuntu after they went with the inaccessible installer).
>> 
>> -Eric
>> 
>> 
>>> On Sep 3, 2021, at 1:45 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> For problems, suggestions etc. with blindcomputing.org you may contact the maintainer at github.
>>> https://github.com/blind-computing
>>> 
>>> HTH,
>>> guenter
>>> 
>>> Am 03.09.21 um 05:55 schrieb Linux for blind general discussion:
>>>> A blog with no content,
>>>> A comments section not possible to use,
>>>> the comments management company is where you end up after giving that site
>>>> an email address and that site is directed at getting more business for
>>>> the comments manager site and you don't get back to the original website
>>>> to leave any comments.
>>>> All in all, a very dodgey operation so far as I can figure.
>>>> This was after using firefox to log into the site and no it wasn't worth
>>>> the firefox login or the extra time it took to find all of this out.
>>> 
>>> 
>>> --
>>> .
>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

