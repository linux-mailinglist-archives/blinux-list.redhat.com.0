Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 6AE682123FC
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 14:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593694749;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZMDugqAx6FfyI85U/5F4hROx9Wq15PCP4aBfZ1/Q2eA=;
	b=SjLG8Wyo8Wb+Z5HqPcbudfFuu22+EXHJzoex/KaVsH6xvptpApdJkIv1N70sIrLF7pl4nz
	SUmheN1pN/N4fBSLUl0pesUudCOmQExmnJr+OUtfX+K0GA/hCdJ0ZYg01ov/ANdnB3qU38
	+wjhO2J4PG+M9l8+ZtttY/6T9sPHsTY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-agy9bB69MrWQ8pmprgV2iw-1; Thu, 02 Jul 2020 08:59:07 -0400
X-MC-Unique: agy9bB69MrWQ8pmprgV2iw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24A868015F3;
	Thu,  2 Jul 2020 12:59:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6A4E79233;
	Thu,  2 Jul 2020 12:59:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2AB396C9C6;
	Thu,  2 Jul 2020 12:59:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062Cvdi8025967 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 08:57:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AFD80F496B; Thu,  2 Jul 2020 12:57:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DB00F4D5F
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 12:57:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 961AA8007AC
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 12:57:36 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-277-OAQW7QjLMPqQSLanuutexQ-1; Thu, 02 Jul 2020 08:57:32 -0400
X-MC-Unique: OAQW7QjLMPqQSLanuutexQ-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 062CvVnp235608
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 2 Jul 2020 12:57:32 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 062CvVnp235608
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 062CvVnp235608
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 062CvVAi235607
	for blinux-list@redhat.com; Thu, 2 Jul 2020 08:57:31 -0400
Date: Thu, 2 Jul 2020 08:57:31 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: using orca wile using jack
Message-ID: <20200702125731.GD2669@rednote.net>
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
	<CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
	<CADj8Jxcw1vypzVFk+NCLj3rw3q__n69QZRuJQaZewaYUKhAhKQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADj8Jxcw1vypzVFk+NCLj3rw3q__n69QZRuJQaZewaYUKhAhKQ@mail.gmail.com>
X-Operating-System: Linux opera.rednote.net 5.6.19-200.fc31.x86_64
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Correct. Jack isn't supported by any of the speech drivers, nor would
you want that. Jack is a very different use case.

Best,

Janina

Linux for blind general discussion writes:
> When I start jack2 I don't have any speech.
> 
> On 7/1/20, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > Hi,
> >
> > One option is to use pulseaudio and have pulse output to jack. This only
> > works with jack2 with dbus support, and you will need the pulseaudio jack
> > plugins (in arch this is in a separate package for instance).
> > You then start jack with "jack_control start", after which you should make
> > sure jack is selected as output sink for pulse.
> >
> > Regards,
> >
> > Rynhardt
> >
> > On Tue, 30 Jun 2020, 19:24 Linux for blind general discussion, <
> > blinux-list@redhat.com> wrote:
> >
> >> is it possible to use jack wile using orca? How should I configure it?
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

