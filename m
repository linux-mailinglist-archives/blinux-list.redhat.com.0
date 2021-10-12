Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7F28429CBA
	for <lists+blinux-list@lfdr.de>; Tue, 12 Oct 2021 06:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634014158;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sI/2mPKVbHVGifP3GtBv7AvxQgGLMKIsHkM0lU6frxI=;
	b=MWIsjJZX8YWyikdlsTwysU39/yGLEy88zybVTiclWnD8zUMtI3ekp9Z/VJCn/t0bTWRcC9
	a4lrRa3IbuWCItSitwjtcLCtSbnCfeJuemzbrcLMRlM912frVcKhPlhpfSnmmXslyMwLup
	D4WVQQpPJKs3iJ60pfjY53k1cSmcKGY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-EX28D4sRM_mGX6A0ZKQsVg-1; Tue, 12 Oct 2021 00:49:15 -0400
X-MC-Unique: EX28D4sRM_mGX6A0ZKQsVg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 799C2362F8;
	Tue, 12 Oct 2021 04:49:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60E6810016F4;
	Tue, 12 Oct 2021 04:49:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9CB351809C84;
	Tue, 12 Oct 2021 04:49:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19C4n57r003631 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 00:49:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8CC162166B2D; Tue, 12 Oct 2021 04:49:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 876A62166B26
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 04:49:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BEED5800883
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 04:49:02 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-441-R5jI_qUUNi2FIhP_DFlbXA-1; Tue, 12 Oct 2021 00:49:00 -0400
X-MC-Unique: R5jI_qUUNi2FIhP_DFlbXA-1
Received: by mail-ot1-f42.google.com with SMTP id
	d21-20020a9d4f15000000b0054e677e0ac5so10441331otl.11
	for <blinux-list@redhat.com>; Mon, 11 Oct 2021 21:49:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=Yxfxnoj3xHteplm2/HDZSQfCEJi/DpSx98lokWebcHA=;
	b=p6JBREFgcL2MvaXZ4y4s9II7ClQrLnlBuKa6TuMuWaRQS8jusnmMeROVbbweIlXdns
	x6uAI0IllWOC9kJVrK2gwNnlSTEeOBeY/86pUxMAWLGK6MqQ+NXGYl6Yz+AyOszGArKU
	zni+La/O3qpLaCUPInQWd7OjKe7S3WfCIxyIg87q0spaRkBLrrqiioEe6pbN1aYwUzbe
	9hYVl9dSOxoOW4yFf1ZftFKxtTMqt/egGpSTUdRm61r7+ph9NPc/HcphzO0Q0gKEL2Bz
	3acEYUwilgknUzN1q12ACHH3MYwqJbqi1RsaoBwj/X3/jN7sbtJWPP35mtIbLG40Tn/Y
	3q3A==
X-Gm-Message-State: AOAM53361+OuS8Gb+Aadnr86xvhyW4BzQjXEORHe8vfbot0DFAHGh5HC
	MnddMtnGpq7yQR1b10ww+O3nLMTJ3Bc=
X-Google-Smtp-Source: ABdhPJythCRV0DL8DL3/m2LzuPRT/s6OZg6+1kvRNBR9i8fKLkSZKhN5WTc9tgLht00lPAb6SWIj5Q==
X-Received: by 2002:a05:6830:714:: with SMTP id
	y20mr6624116ots.257.1634014140088; 
	Mon, 11 Oct 2021 21:49:00 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:3d0e:6cf4:7fa6:2285])
	by smtp.gmail.com with ESMTPSA id 12sm2147190otg.69.2021.10.11.21.48.59
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Oct 2021 21:48:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Mon, 11 Oct 2021 23:48:58 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
Message-Id: <0356359E-BF8A-48AA-B657-5C9DC36EAB87@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19C4n57r003631
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If what is needed is a linux with orca working out of the box, wifi working right away, and a log in sound, go to this link.
There, one may download Coconut, a version based on ubuntu.
The regular ubuntu should do the job also.  But Coconut is handy for quick accessibility.
http://www.cocofrix.com

> On Oct 11, 2021, at 11:40 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hi guys,
> I was wondering if anyone had suggestions on what distro of Linux I should load onto a new computer? I will be using the computer for mainly school purposes to learn the OS.
> Any help would be greatly appreciated.
> Thanks,
> 
> Ashley
> 
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

