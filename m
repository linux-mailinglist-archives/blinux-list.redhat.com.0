Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 235B746237E
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638222044;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gvSl0qDRqTY2KNaqnNvgCg5tb/v3VtKDO+yF1RbOF8M=;
	b=DK+RAj8bPWACKrYZl821/H+9LZsbfXkykkGqmIc18dkZxgrGVzL3HDuGQBFFootZG2lw7G
	r3tlDPvPI1v0vxnpr77QvOM/OVtyWysLwdHzvoBPci0vFCBrPoh2yGui2MRoph0+cm9gIh
	Rc/+FZSRnsEhzi2F6oAcejYQC9hUEVU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-252-s4bt5WYsMq6Xi5O3kjt-bw-1; Mon, 29 Nov 2021 16:40:40 -0500
X-MC-Unique: s4bt5WYsMq6Xi5O3kjt-bw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6254219253D8;
	Mon, 29 Nov 2021 21:40:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E3F160BF1;
	Mon, 29 Nov 2021 21:40:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2BFB4BB7C;
	Mon, 29 Nov 2021 21:40:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLbt9L010448 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:37:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3B08D492C3B; Mon, 29 Nov 2021 21:37:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35F35492C38
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:37:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14514802813
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:37:55 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-138-LTf6pB73PPKItzKCxnbLgw-1; Mon, 29 Nov 2021 16:37:53 -0500
X-MC-Unique: LTf6pB73PPKItzKCxnbLgw-1
Received: by mail-ot1-f46.google.com with SMTP id
	47-20020a9d0332000000b005798ac20d72so27377753otv.9
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:37:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=nT3eQwetCM66N3ePrhz//FzgNgSRv/O+PNQTBdAq03A=;
	b=pqrjz2pOWRtgAnsoC1zCz7r2LLKih6ljUgo0bMpV9xFpJ3PWHdcvCgt0HB1xo7W7/L
	ERi29plPDHzUtE19IIObKlzCN2T+VvB7cOIgxa4K8yiIWNfPfwXhOkTJwPdbEiV4rAPX
	txGN94EYOmwqsfmFy5alV02cU8J9dA6qXs44YjmeoGyH7KuqYIuv49ELMDGEVzBrm5cW
	dVxoMOqklWAil20RgJgXn3+J/DZZlLkfGr6YmS/zMux5gIeq2aDVHlprhLxGsZef/AmR
	zW6PpLYJfWWw0snfCb2oIlZy1QNPj0tljF4SwINlOk/wrJ1xJ9KZua3uBZ6lgAaHis8d
	f9GA==
X-Gm-Message-State: AOAM530A06j8CCymcrHnG8Bj86/2uTkJmYuERYIcP86dSdhHo1zezLg0
	fMvqE7Y2MiBFRH+SzRUG3iiCSpoQt23vrA==
X-Google-Smtp-Source: ABdhPJymQdBPvN/XMlmjvmRyKweseb4Tg+dBzao+Ii/AXT5dzydd2O180Dwq22LlHnRbcf/I1u1f1A==
X-Received: by 2002:a9d:5604:: with SMTP id e4mr48764185oti.249.1638221872476; 
	Mon, 29 Nov 2021 13:37:52 -0800 (PST)
Received: from ElBraille ([2600:1702:20f0:4420:7070:8ff3:6d15:e11b])
	by smtp.gmail.com with ESMTPSA id d6sm2822352otb.4.2021.11.29.13.37.51
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Nov 2021 13:37:52 -0800 (PST)
To: <blinux-list@redhat.com>
References: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
In-Reply-To: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
Subject: RE: Pipewire and Orca and audio
Date: Mon, 29 Nov 2021 16:37:51 -0500
Message-ID: <08ca01d7e569$5cb7dfc0$16279f40$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQEFk7xZRCMaIgPYNtRt11gc8sZDbq2/qbFg
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Interesting.  I have a fresh install of Fedora mate and my install went
without a hitch, but after doing an update to my system, I had speech at
login, but not at the desktop.  On another machine with Fedora work-station,
speech works fine.  I am wondering if pipewirer is the problem.  

Matthew



-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Monday, November 29, 2021 6:45 AM
To: Linux for blind general discussion <blinux-list@redhat.com>; Linux for
blind general discussion <blinux-list@redhat.com>
Subject: Pipewire and Orca and audio

So I'm convinced now Pipewire is doing something funky on 
qemu/Virtualbox. I've spun up a quick and dirty Arch system running Mate 
via startx. Pulse works fine but the moment I redo the install with 
Pipewire, Orca keels over.

So is there anything special I need to do in order to get Pipewire to 
play nice? I did sudo pacman -S pipewire pipewire-pulse wireplumber and 
am trying to go with a Pipewire and Wireplumber setup. All other audio, 
like YT vids, works fine, Orca just comes out as a garbled mess, so it 
looks at least to me like Pulse works better on my system.

Anyone else run into this with Arch or other distros using Pipewire and 
fiure out a solution? There's not much online really about it, just 
articles on oh it's a bug, or oh replace Pulse with Pipewire

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

