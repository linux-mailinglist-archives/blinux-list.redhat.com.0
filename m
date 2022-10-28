Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4E761194C
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 19:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666978349;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ToGap6KJs9OuKL+VXFs0bpUoQigC2cFpgb7FPfAJ8Ug=;
	b=MaKJn176Jto81S0xulhgY+2WbvoGxR9+NqEnEi91dHq1q+3mduNdZr6O961nVa8X80rSDm
	C2feZe2ukPLIg2IuJSCCSA9yjCJaUU5GR3uNjmJv6T6ZooQztbG+5lihba0GgdKDMMqdyi
	L6sRbA8XNikHRhVfpOpgwpSvGVZp6WI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-290-JZGjGArgOsid-ZtGFgzNIA-1; Fri, 28 Oct 2022 13:32:25 -0400
X-MC-Unique: JZGjGArgOsid-ZtGFgzNIA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25DF0185A794;
	Fri, 28 Oct 2022 17:32:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6B3274A9265;
	Fri, 28 Oct 2022 17:32:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC3231946A7F;
	Fri, 28 Oct 2022 17:32:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: better way to extract dvd audio with ffmpeg
Date: Fri, 28 Oct 2022 12:32:48 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.3263.1666976820.3010.blinux-list@redhat.com>
References: <mailman.3402.1666971107.3004.blinux-list@redhat.com>
 <mailman.3263.1666976820.3010.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.1.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:RxjILT0Acfk=;0nnJKtJAFPMMSwiqO9Cwmjrd55m
 3inutVCGETCdwjJ330o7YL2wD9lF5a/HImlwA9FD5+dtvPNsKubDkPwRpmNpfHM3rSEJdIdwG
 g00zD/DHhg15RRc+vaGTcOptcKCtk2g8LKzJxGfFNPqhBs2QnuCCXgJytihL9fOFU5MMBw48V
 MwO23ZxlkolBi4EIdQ+LKuvWXDRe0+jEpvDCzisfNWOTmN8H4hv5VqCVcPLAO1fCPdQZduRfL
 hbPPSajvYdqfCgu/Fr/BeSj3u1qQZHp+5glun2EHWScDxIEgSBvSAkXC+t7C0lgyDTChqbui6
 ENJygwCIaCsKkf8KcYEgHal/+Rfy7cTgfGdVGXXqkaDfpHNI13ZQdmMlk0gZvS84aTg+FRG2n
 33BeXt+9SWTeEjGYmxSSRuUGZ7VippcxZ6zjzdNwczBwcRkweWO7EX6Xf5tADAS9a0HNfjYf1
 GTD/Ayryb5PONfveHZ049ZrFJaid5PsL+YxrzVMWcKEE851FfrYZORiINlDpFMPzk8oEPip1o
 1klNhhpICyGGz/7H996DqvNvTgvAxzL4L77I1D/SXuPBATAShifjTKUujANYM8s0DamCRGzL1
 sxBfJ1zUIw79S5ayHf4xSzLrDp9TfrkjK3F2yZpoFfRG3kuLjXICOfqKsQjulBcxj+rw9AZK8
 dXS61lgfYDHvuRXeauSeEg928f890CKxA94pHU40/4ObHbIu8Nbk42+AnxtSWbttRSHuq8Dd5
 aVERq6aMUe3SY0kGLy3o9WF1uFuyn5ROfcqhOMfZFJHZ2vDGSWiE1EiOGaTRINKUqwSApyYWV
 AYwhX3RBeePjXH1grPd2SUwM4W/iWI2ZCnSTgBf8Kl0JdxIhLWB/eNOM6pK8nR+MUvhrWK9/n
 a+IIpRZNG9OkKWOjvUSk/ID6UjRg9hQR7mKczo0oq/AHRrKIfbqDj4gcRwQqcDh7wSlMIKza0
 6dhzpYF9SFZ4mfBSsB/vpvqkdG0=
Message-ID: <mailman.3294.1666978342.3005.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I sent you a message on telegram about this. It gave me a segfault lol.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 28 Oct 2022 13:06:40 -0400
Subject: Re: better way to extract dvd audio with ffmpeg

> I just noticed that you are trying to extract only the audio, or 
> possibly transcode it. I do believe vobcopy may still be able to help 
> you, since you should be able to pipe the output to standard output and 
> straight into ffmpeg, which can either copy the audio only or transcode 
> it to the format you want, thereby saving space on your hard drive. This 
> example worked for me to extract an mp3 version of the title I wanted 
> from a DVD. You can adjust it to fit your specific needs.
> 
> vobcopy -l -o - | ffmpeg -i - -vn -c:a libmp3lame -b:a 128K audio.mp3
> 
> Hope this helps.
> 
> ~Kyle
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

