Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D6C49D1B1
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 19:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643221564;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zVbBJGuR4OESp9OScvueyxgpkQORrvSkw88xLNbxnLs=;
	b=GwBgcsoFL9CoxWw3tk/N1QnB2tAHkq71YuCiMwlv1+vBKqeJX0DN4fWvqeefS7HUiMia7b
	u6xDxFnzsPQG2Uwin2G0zg370/Jo7czVMn/4lzeYPh2O25excxVOtZhjfP3E/TU71gqPZS
	fcgMs5TwUFylI3FZvhteQ0N7eYeuYzk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-364-BKafXJVNMy-gIVXo99hfkA-1; Wed, 26 Jan 2022 13:26:01 -0500
X-MC-Unique: BKafXJVNMy-gIVXo99hfkA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 970D2344E6;
	Wed, 26 Jan 2022 18:25:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F230C100AE22;
	Wed, 26 Jan 2022 18:25:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 52C0A4BB7C;
	Wed, 26 Jan 2022 18:25:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QHkHBA007447 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 12:46:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6A16BC23DCA; Wed, 26 Jan 2022 17:46:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 663B3C080B3
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:46:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C70380029D
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:46:17 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-150-_DlZtPvWMH6d7hotXKeJjw-1; Wed, 26 Jan 2022 12:46:15 -0500
X-MC-Unique: _DlZtPvWMH6d7hotXKeJjw-1
Received: by mail-qv1-f44.google.com with SMTP id k4so493773qvt.6
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 09:46:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ejvy7ttbRTkdByZvESZzBQnGfFMD0DkKpQ+lgzzYo6c=;
	b=DhxJqsGNcPuao9yGFSwEdxffbtZFKtf3K6FJmetqQHGE+mvl7/1sGqwzE/YxJAgHmn
	xg+Ap3dxWkAFKG6Q3Jn21oZsFDzHiWAVQEgVZI7wJVqCuuDwMiPmDuK+9BObsozvpCwO
	NRJbgyrFOicUXaCciVsRbR5sjau0IrDv2fVrPfGeJjcEfuhrHcVfz+WSQuEhw/gCEyGU
	NbAk3bscM6/pDuSGYXWwQXuh9SObKkEx2QIpeakisSRWr+0saTV34sL+RTnHAlvzrjcS
	HGf+V+PBWK7LfsflBXr23XQ0xYI7eLoSKbO/u4UdGT20NxNkwO2kna5KpgzsvVvGV8LL
	uVEA==
X-Gm-Message-State: AOAM532hkwpk4IudvJJCNOuDtjHIaiqf4jioUKEXVlq9cxtXF7SgaETW
	x+a6AIYr4uB5zwGOK0MkOCaytRxQ3agaMw==
X-Google-Smtp-Source: ABdhPJx9/BFHycnkulh6atz3o4JfwJLUYxvv9HDhIHdoQ7q/qBhF5WISWeQ/MpEe2ypZwGcxIJNqKQ==
X-Received: by 2002:a05:6214:626:: with SMTP id
	a6mr24728032qvx.114.1643219174759; 
	Wed, 26 Jan 2022 09:46:14 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	w14sm4493961qtc.29.2022.01.26.09.46.14 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 Jan 2022 09:46:14 -0800 (PST)
Message-ID: <eb34fb68-e84d-90ec-d7dc-0998a5e0cfc8@gmail.com>
Date: Wed, 26 Jan 2022 12:46:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
In-Reply-To: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I can only find something called gtts, which takes your written text or 
a text file, pipes it to the Google TTS API and sends an mp3 file to 
standard output or to the mp3 file you name. So I was able to run in a 
terminal

gtts-cli "This is a test of the system." | play -q -t mp3 -

and I heard it speak using one of Google's female voices ... it sounded 
like the assistant actually, which means that I should be able to change 
the voice to any of the other assistant voices, though I haven't figured 
out yet how to do that. I can see that it is also possible to run 
something like

gtts-cli -f book.txt -o audiobook.mp3

and your mp3 file would be stored on disk instead of just being played 
from the standard output of gtts piped into sox. That said, I don't know 
what the maximum length of the file to be spoken can be, since the 
script is using Google's API, so it may need to be broken up.


Other than this, I see nothing else that will directly take text input 
and produce mp3 output, but most speech synthesizers can take text from 
a file, from standard input or from a command line and speak via either 
standard output or a wav file. You could take that and pipe it either 
through sox or lame to get an mp3 file. A good example using espeak would be


espeak-ng -f book.txt --stdout | lame -q 9 book.mp3


Check manuals or help text for the specific synthesizer you want to use, 
since the command lines to control them vary widely. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

