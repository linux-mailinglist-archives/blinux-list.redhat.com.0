Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA3A3624D1
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 18:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618588841;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eNTFXU9n8y85DYeByJJH+jkti9eRcFD9nvV2XokMcZk=;
	b=IIO3KLp79SUxLONfVQTpyGtFFDkbf8lwNi3tFJkHG7ebS55kKpgmv2HXE35ctB4cl5oAgY
	QslO3VMkmFPBhccGEZq40BagHAmkGAhKKGZuOozkyl9PczSlQiXKHS0TRPjAcHemGq0In+
	9bbTtcKKYZR4GL58oVvK/wW1l27AsKY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-6jXs4P21M1eCRZqPBWBxNQ-1; Fri, 16 Apr 2021 12:00:39 -0400
X-MC-Unique: 6jXs4P21M1eCRZqPBWBxNQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B32F7814336;
	Fri, 16 Apr 2021 16:00:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78F215D9C6;
	Fri, 16 Apr 2021 16:00:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2435544A5B;
	Fri, 16 Apr 2021 16:00:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GG0GEp012105 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 12:00:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DF63610545F4; Fri, 16 Apr 2021 16:00:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA8D710547E6
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 16:00:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 573E285A5A8
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 16:00:13 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-589--ZUb27qXOYupAviBZCAKpg-1; Fri, 16 Apr 2021 12:00:11 -0400
X-MC-Unique: -ZUb27qXOYupAviBZCAKpg-1
Received: by mail-qk1-f172.google.com with SMTP id f19so11625514qka.8
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 09:00:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=5uEV2G8xAFyOCieAST+/JIp8sFO/Ml+D+8AQkPyA4ZA=;
	b=fslaArTbMq2FyweEVcN7xeQRhKSNBnYhU3VQTimMkX/u6GNg4hgrqzICrkDOX/MHgg
	6g2TPCMJe5RINANsX7wkxV7YWVrYXtHv2AnSlK+fxYbKaxmLeAC4pBAoOv/s9qK6Z2hw
	heeKzsGnv7CBO6ouqkuEG52zoPZ0EPiF+07mHF0snKIXwfwkBIHYJ6sbR7v3b4f0rpMY
	z8Q5acxhZDBrgJTh3tVfkcScm0gqVwnLLRgPWkF8MSdi/zGzG+Y3fczOXBB8KCDCt5RQ
	whTGmBgrmDhEBzOkFr2jMQXnxG/doSHaO8l3PjxeCN5HSgW9cmOduG9YM7uDXYQIFmH0
	MGLg==
X-Gm-Message-State: AOAM530qx1KebR3UnOmRmmGfTVULTmLQ7oQCpiX63PSg0gpuKlrZjWNK
	qqWiZ+cRM7BUiYkg7SHsWBzG4Ra+wzu8T1bjeMR+xgHKFUc=
X-Google-Smtp-Source: ABdhPJyRezFCANiYpYG+e+RjXglabk0pdxwhR5RjzULs5Eo7lVPfqQMJEDF+RAapIgVV3/nnlCM1tz4t26XcGPJmIaY=
X-Received: by 2002:a37:63ce:: with SMTP id x197mr9605580qkb.341.1618588810450;
	Fri, 16 Apr 2021 09:00:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Fri, 16 Apr 2021 09:00:10
	-0700 (PDT)
In-Reply-To: <C50331B1-79A1-4EC9-920F-BE18BA55DF36@pipkrokodil.se>
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
	<20210416.050139.449.4@0.0.0.0>
	<C50331B1-79A1-4EC9-920F-BE18BA55DF36@pipkrokodil.se>
Date: Fri, 16 Apr 2021 16:00:10 +0000
Message-ID: <CAO2sX30ycrK4+=ciSFiW6egDAVSKwCnG0rymmd8ZkgE_Ft8ysA@mail.gmail.com>
Subject: Re: Would you be interested in having natural sounding TTS voices by
	Readspeaker on Linux? demo link included
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For what it's worth, I didn't notice anything off with the original
message's formatting...

As for the question, I'm quite content with espeak-ng's default voice
and consider it higher quality than the more natural sounding voices
I've heard, many of which I feel fall into the Uncanny Valley if used
to read anything longer than a single sentence...

That said, more choice is generally a good thing.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

