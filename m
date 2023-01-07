Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F046611EF
	for <lists+blinux-list@lfdr.de>; Sat,  7 Jan 2023 23:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673129239;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GS54IaqB5kOskPPmXo74LPQwImp9vpZsNqqhuskfA4Q=;
	b=RqsSk7UGVNdRcUCN6s5+CevjDCB+vNl0GONWJQNdAJp5He7Z2nFSkDyrjTkQfjAUruT0o+
	P5yDRBpxiMa7R2W2R2oWrd7WiEtBzAepTFMhbRGB6gMtMbLZ4yN2IhyZrt+uOSnGgz6SS6
	NS+ktLv6vJROqMn4jb16J4S/jjJPecU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-616-zy8A93kvPG-IAB7Pq5-Lrw-1; Sat, 07 Jan 2023 17:07:16 -0500
X-MC-Unique: zy8A93kvPG-IAB7Pq5-Lrw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F047285A588;
	Sat,  7 Jan 2023 22:07:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 398272026D4B;
	Sat,  7 Jan 2023 22:07:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C085A19459D5;
	Sat,  7 Jan 2023 22:07:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 7 Jan 2023 17:07:07 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: check for existence of file
In-Reply-To: <mailman.3540.1673128966.2515669.blinux-list@redhat.com>
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
 <mailman.3528.1673128375.2515662.blinux-list@redhat.com>
 <mailman.3540.1673128966.2515669.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3445.1673129232.2515660.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Actually, that second command should have been:
wc -l wget-log&&grep -i saved



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sat, 7 Jan 2023, Linux for blind general discussion wrote:

> When I do a download with wget, I use:
> wget -bchttps://example.com/install_2023-01-03.iso
> This does a couple things for me while downloading since I can then use:
> wc -l wget-log|grep -i saved
> If I use up-arrow once then hit enter that second command gets run again.
> I monitor the download progress and find when the file is saved with
> minimal screen clutter normally produced by wget.
>
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Sat, 7 Jan 2023, Linux for blind general discussion wrote:
>
> > Tim here.
> >
> > I usually use the "-c" option with wget which continues an interrupted
> > download if the server supports it:
> >
> >   wget -c https://example.com/install_2023-01-03.iso
> >
> > which isn't quite the same, but has saved me many hours of
> > re-downloading things if my ISP connection drops in the middle of
> > a download.
> >
> > -tim
> >
> >
> > On 2023-01-07 16:29, Linux for blind general discussion wrote:
> > > The script c-jenux.sh checks for existence of a specific Jenux iso and
> > > lets the user know if it exists and does not download the file.  I'm
> > > finding this useful for this particular project and I figure others may
> > > find it useful to check for other files as well so I'll post this below.
> > >
> > > #!/usr/bin/env bash
> > > # file: c-jenux.sh - check for bad iso
> > > wget --spider -S https://nashcentral.duckdns.org/projects/Jenux-2022.12.04-dual.iso 2>&1|grep -i remote
> > >
> > >
> > > Jude <jdashiel at panix dot com>
> > > "There are four boxes to be used in defense of liberty:
> > >  soap, ballot, jury, and ammo. Please use in that order."
> > > -Ed Howdershelt (Author, 1940)
> > >
> > > .
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

