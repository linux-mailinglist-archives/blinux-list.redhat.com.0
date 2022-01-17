Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E8A4900D9
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 05:39:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642394363;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lN+r8Rte7gDhev7wVRZxSyMXeJybcG6lUTEraw7O8JY=;
	b=X9nQnHlkeuTKr17FSjBfLvbSUm3NkGosEXAGzFOiqxh0hv9LEKFhj5UPxNNL4vfxm7gQK/
	6nlvnrmla6/GCH6a/YnR0OLENaUrzF+P1FbOCJ184B+b8T+goN8hzf9pjbmoj4+qGSxUWY
	i+JtbLcM7Hu/SX1gpkCRODUDKWy9usA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-204-7dt5w5j5P1qTNeK-fw-bsw-1; Sun, 16 Jan 2022 23:39:21 -0500
X-MC-Unique: 7dt5w5j5P1qTNeK-fw-bsw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5868B1853026;
	Mon, 17 Jan 2022 04:39:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B359E72B;
	Mon, 17 Jan 2022 04:39:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6506318095C9;
	Mon, 17 Jan 2022 04:39:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H4cZcf014257 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 23:38:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5FE0F492CA7; Mon, 17 Jan 2022 04:38:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B251492CA4
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:38:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4045628EA8A4
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:38:35 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-205-LKDILeLZN2Ca0lnOjuk7_Q-1; Sun, 16 Jan 2022 23:38:33 -0500
X-MC-Unique: LKDILeLZN2Ca0lnOjuk7_Q-1
Received: by mail-qk1-f181.google.com with SMTP id j85so18452440qke.2
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 20:38:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=oS7vHaZNX9H5Qm9ZqGKzfw/suCQV5BouTfISCtGqaG0=;
	b=uZXk/ORtD/AHI+ATnOmCAxVhhBNOEbgz9DGid36yJGfNnGx1FTU/k72r/K/1eaGoWV
	hA9LulxTFeDrC2MkffAlFtWpFiRHqAPK1u82jXcrh/qM8J2ZGMLtWAl3ugvJB2FoqwvB
	kHeilKnCa1lTL6GnCZTZ0GTG7We0tYsgp47aLf+2zu8HUl2bpyk0VGRVvnF/gsRbURm1
	WrCJgISrTmUs0RbJYNlDfuzOaKLJ785H8UCHyXKpaWMyk3DLNbgG3yPaOVf890LmwQyB
	y9q//ykNpvm9F7+DE/9ooJg7DnFkR2E7u4NG7tPSe2bEHvfb7i5X0Od4K1m1D8pL3dPa
	5cvw==
X-Gm-Message-State: AOAM533MBrs38R2oTOZ58TMStMv2p75rvHWwTsf2lUPPnVGpNe5ehawc
	Cal8M6XsG/KNm4Fpfm0IA7t5BtqcVJmM+7nErquF2bidw3c=
X-Google-Smtp-Source: ABdhPJwo6CHee1GVlCBrpSrNvAlHirikANsYkALUxFXiZvlDwKJHeIn8R5r1L/neWJ9+swWB1ApwGewXaAj8phtEF9M=
X-Received: by 2002:a05:620a:24cb:: with SMTP id
	m11mr3226170qkn.387.1642394313069; 
	Sun, 16 Jan 2022 20:38:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:e8f:0:0:0:0 with HTTP; Sun, 16 Jan 2022 20:38:32
	-0800 (PST)
In-Reply-To: <0b3c959a-d5ec-1050-81d6-37df390e1fd8@gmail.com>
References: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
	<84DAA8A1-78CE-47C4-A4B5-F717D2DD25DB@icloud.com>
	<ae4dc9d1-d6de-0319-e682-ab489f86fd81@gmail.com>
	<b82ed2ba-dd41-5346-dc79-86765e15de95@hubert-humphrey.com>
	<0b3c959a-d5ec-1050-81d6-37df390e1fd8@gmail.com>
Date: Mon, 17 Jan 2022 04:38:32 +0000
Message-ID: <CAO2sX33MKzH0yT5qgR9ZE0E3+13AKWsEM4+6G8ai=cyEyN-sRQ@mail.gmail.com>
Subject: Re: looking for accessible music library app
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

in cases where you would be missing info, couldn't you run Music
Brains on those files?

Wait, there's a way to search for information missing from a file's tags?

Anyone mind providing details? I've got a number of albums, mostly
video game soundtracks originally ripped not long after the
collector's edition they're part of came out, and it would be awesome
if I could get these upgrade from unknown artist, unknown album with
Track ## as the title...

On a somewhat related note, anyone have any tips for transliterating
tags generated from non-English CDDB entries? Mostly for taking
Japanese and Chinese music to something that will actually be read
properly by my console screen reader.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

