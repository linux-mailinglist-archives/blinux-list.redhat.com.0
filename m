Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B8415446B07
	for <lists+blinux-list@lfdr.de>; Fri,  5 Nov 2021 23:47:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636152451;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pI93da0Nl2O45mYTPUU5Sq7l6jiS9gHBPu1M9XuAvpk=;
	b=UEXouOmM2Qr1rbZ9JsGTIa8BS0j4JfcdN49Bi9qHWTsrgK6HtAsC6XA+Z4hzhYMN0Lnd/7
	jkEQai2geC4uX6XwOO5xZPwckjD/uFh7s/Njl2soC1NyY4jxv2fPpt+y6RJTGI9zoVK3/+
	U9UaarIZ1N03qWrNQYGQTeFz56YLAjc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-7wJ2spxlNBCi_0BSXiF37A-1; Fri, 05 Nov 2021 18:47:29 -0400
X-MC-Unique: 7wJ2spxlNBCi_0BSXiF37A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 12A5F100B701;
	Fri,  5 Nov 2021 22:47:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CAF5318B3D;
	Fri,  5 Nov 2021 22:47:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5F92A1806D04;
	Fri,  5 Nov 2021 22:47:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A5MkROK032284 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Nov 2021 18:46:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 47DEB400DEF8; Fri,  5 Nov 2021 22:46:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 426124010E8A
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 22:46:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 291DE1066558
	for <blinux-list@redhat.com>; Fri,  5 Nov 2021 22:46:27 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-266-2UPpEsalPPO3JBeDmBEuZw-1; Fri, 05 Nov 2021 18:46:25 -0400
X-MC-Unique: 2UPpEsalPPO3JBeDmBEuZw-1
Received: by mail-io1-f41.google.com with SMTP id b203so8956471iof.10
	for <blinux-list@redhat.com>; Fri, 05 Nov 2021 15:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=NSeQpB01zy7sOuinbzftOMwEHqfJUg/VkwilH+Vw2s4=;
	b=TxC1sNzJ7WO4+/RmHDuP+DNcHDXWE7gRbvINFkKP9vA1HxZPN1IXygXTwlS/QqRsIg
	tWnQEG0H42Y0EDXh39yT4nW1xWFeHhPghmQSlDbVCrTPL2kPnxDfuq3yUdjx3JiZXT/K
	fiLpTIdPI7dLBvp9s2niHA8QNbAxvHxfWYWi0XXLczJknXgDC1NNJux0lJmuNheqyLW/
	3EmY82O8cp5Rs/lc3JelF5m/CUbUFq35xYBKdjn/j6B39FS2kYqPvGBJxCSur+nzB5fv
	USnpzU+/NwKk474gu8dQjB7XhPHNptt7DgtgDFAOizo8pEjsTubb+YpcuDW9vFJ4jcNf
	yS+Q==
X-Gm-Message-State: AOAM532hsUWk5nghpCt1Xgha71eT1CJBp16iW4yubpjcNZGAhe8O3yKT
	GpQVvqVEGdKhYwaGcZfIb4nEgabsgb1kjQ==
X-Google-Smtp-Source: ABdhPJxhLcrFXyTSeYa3DDBFgUkCUipEqo5dinR1x/HyoMBFtAaVn6Im0VYJFR0CAIzerhnqD2b0Bw==
X-Received: by 2002:a02:9f87:: with SMTP id a7mr389067jam.136.1636152384397;
	Fri, 05 Nov 2021 15:46:24 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:6dbc:f47d:7a7f:d637])
	by smtp.gmail.com with ESMTPSA id
	g10sm6198674ila.34.2021.11.05.15.46.23 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Nov 2021 15:46:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Subject: Re: How to get speech in a console session?
Date: Fri, 5 Nov 2021 18:46:22 -0400
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
Message-Id: <66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Debian has a detacated accessibility page.  The wiki page is wiki.debian.org/accessibility <http://wiki.debian.org/accessibility>.  This has info on how to get speech both in a text interface and a GUI.  As a side note, if you use speech with the installer, everything will be enabled In the installed system.

Matthew



> On Nov 5, 2021, at 4:28 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I already have espeak and espeakup installed. I tried running fenrir,
> but I got the following error:
> play WARN alsa: can't encode 0-bit Unknown or not applicable
> 
> On 11/5/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>> If you start the install media and press s then enter, you'll have speech
>> during and after install.
>> Devin Prater
>> r.d.t.prater@gmail.com
>> 
>> 
>> 
>> 
>> On Fri, Nov 5, 2021 at 12:37 PM Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>> 
>>> So I'm new to Linux, and I'm going to be trying it out for a period of
>>> about a week or two, to see if I could use it as a daily driver.
>>> One thing I'm not sure about is how to get Speakup (with either
>>> Espeakup or Speechd-Up) working.
>>> My distribution of choice is Debian 11, by the way.
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
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

