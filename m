Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 782BE3408E7
	for <lists+blinux-list@lfdr.de>; Thu, 18 Mar 2021 16:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616081346;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZWyO/QucxtAiMgwv0M5yWgGZQzwThX7ZV/EQ/N9nurQ=;
	b=CzPdIJ5qduYCj9EWoR5p5/iD9isLhHHashGoMRRklCrjQ/bLj8t5gwrlsnXRkLC6QvH262
	3z9o5vZpXyImLmN8kjPF2TW81bzCv5DCAtc8hSnoBPhqcxBp/Icmr6Q+tp8rXjrOcwFcme
	j4VW4AfR6i+9lYjhRdQ3dPDv7PNAbSQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-__CMdtLZMmme0IHwTH9l2w-1; Thu, 18 Mar 2021 11:29:04 -0400
X-MC-Unique: __CMdtLZMmme0IHwTH9l2w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 899B6180FCBA;
	Thu, 18 Mar 2021 15:28:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FB251F445;
	Thu, 18 Mar 2021 15:28:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF9D24A7C8;
	Thu, 18 Mar 2021 15:28:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12IFLmQd016401 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 11:21:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D06992024CD1; Thu, 18 Mar 2021 15:21:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA45E2026D6A
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 15:21:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B43C892D3C
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 15:21:46 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-210-FHtLoJ_CP7-cI6EOrIvtKA-1; Thu, 18 Mar 2021 11:21:44 -0400
X-MC-Unique: FHtLoJ_CP7-cI6EOrIvtKA-1
Received: by mail-qv1-f44.google.com with SMTP id o19so3398643qvu.0
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 08:21:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=dROMmlS6wO14HaKuape4tQYgcmusX7a3CTXmNFsre/k=;
	b=IuN2jNB1+9VNEO+RnKxwEx+AYXOBD0Hi6ZhZxvuJQDHf9kExC3vSvqHniefw7CKJlZ
	KZEUq89g30lonXjTHiX/CTdm42gJsZuzCLhLYTMghXXkKpqClEIffSfagh+P3PJPkCVK
	ISSIG855Spty1C0pGkkAvUYiSpHTO49Zeqs4j+TY5RniX5HWPq6hmf1kwjlbOfUl14Lm
	zbBtUZxaVTZvU/gkXtoDfFyk0OVsBxx4zEFoUFSt+xHnkMzwrWOCTTGKgMVWTwifoW43
	5r19dpi2DfE5d5Ri+VfXBm+9gfsvKRLHoI2bOZIK1N7Js7lTSYhwYGjKsQOvVEgPRYUM
	2QQA==
X-Gm-Message-State: AOAM530guaIIhLNHLxrZb2BZ4xXm9cymGOdYkqD/eyyeZ62ofHJeYX/2
	piWzDG1LUO+fxQFxCn0ic1XyyynTTIg=
X-Google-Smtp-Source: ABdhPJzeMQo1MUJTf4hgInRCOl8Msj9YtCQg0UN27Me09xAkn18rGOqx/8VMfA3YjZB1Nl9u2NRvUA==
X-Received: by 2002:a05:6214:1c47:: with SMTP id
	if7mr4885914qvb.50.1616080903507; 
	Thu, 18 Mar 2021 08:21:43 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84])
	by smtp.gmail.com with ESMTPSA id j3sm1976327qki.84.2021.03.18.08.21.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Mar 2021 08:21:42 -0700 (PDT)
Subject: Re: Decluttering Thunderbird/other alternatives?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
Message-ID: <983d4d9d-2e6d-8209-2203-35345d6fd2b5@gmail.com>
Date: Thu, 18 Mar 2021 11:21:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You can disable the calendar by going to view -> Today Pane -> Show 
Today Pane. It's ticked by default, and pressing the enter key on that 
option will untick it. You may also want to speed things up quite a bit 
by going to view -> Layout -> Message Pane and turning that off as well. 
Threading is another time saver, which I turned on at View -> Sort By -> 
Threaded, but this needs to be selected in every folder where you want 
threading. This just groups emails into conversations, and you can 
easily expand or collapse the conversation using the left and right 
arrow keys and delete an entire conversation that you are not interested 
in reading if it's collapsed with a single press of the delete key. Just 
be sure to expand a conversation before trying to open a message, or you 
could get inundated by message windows.


I know of no way to skip pressing the tab key a second time to get to 
the subject field when writing a message. The reason this is done is to 
allow you to write your message to more than one address. The first tab 
takes you to a field where you can begin writing a second email 
recipient. If you write something in that field, you will of course be 
allowed to tab to another empty recipient field. This feature does 
appear to be fairly new, as you used to have buttons to add a To: or CC: 
recipient to the message, but you just change the address type by 
pressing the "Other types of addressing" button now, which I believe 
just adds that type of field to your message, which can also take 
multiple recipients by tabbing off the first one and just writing in a 
second address. Usually just double tapping the tab key in this 
situation doesn't bother me much. I do hope these suggestions help you 
get the most from Thunderbird, as the only alternatives I know to mostly 
work are Seamonkey, which is similar in many ways to Thunderbird but 
seems to crash rather often, and Evolution, which works most of the time 
and is very fast, but for some reason Orca will sometimes randomly skip 
a paragraph in some messages.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

