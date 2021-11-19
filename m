Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F494577FD
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 22:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637355665;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yUIoHDR5GcH4FZ43Zf68wDOE4//WmFe1KSQwJdKxelE=;
	b=gMllBFVcnqq6IZmO6zcC2iQ8RgyghJ9tg+MOVNfaIeqDzNmdjro+cW7HF6qdl47RvfSkNt
	DWiukfdqUp0Ck9HDXMBoja4kZod0DFOo0wGqq8ZqyWnhwP7agNKEtQtXnp/q3JJt7kBn7H
	GVVKrhq7dR2XtsqpvXYoCVcgJ1OhW3w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-573--rAMdp-fPkCuOJY2Kz6iSg-1; Fri, 19 Nov 2021 16:01:03 -0500
X-MC-Unique: -rAMdp-fPkCuOJY2Kz6iSg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30A52824F9E;
	Fri, 19 Nov 2021 21:00:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBD0D1017E27;
	Fri, 19 Nov 2021 21:00:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 402C01832E81;
	Fri, 19 Nov 2021 21:00:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJL0c4m017567 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 16:00:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C7DF84010FFC; Fri, 19 Nov 2021 21:00:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C1E7F4010E8A
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:00:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0207801212
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 21:00:38 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-191-OHfG17_CP5m5gLAc5PMyig-1; Fri, 19 Nov 2021 16:00:37 -0500
X-MC-Unique: OHfG17_CP5m5gLAc5PMyig-1
Received: by mail-qt1-f172.google.com with SMTP id m25so10662610qtq.13
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 13:00:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=TlyedMwCxpWgH/JQxwGCySCHVIrXZyu42Sj3qOT2EQo=;
	b=xntA83NpDOKmlJHExJ5gJlsklLZ3tpJVvf93hvLamhbN3mGBPsr9mm4Fl2sMyRvKGg
	4oGaC+nvaev1G4OMC5eR0Z44goLnaOcM0esATir6QvpCBXGyv5EfdPrFISGXt/uOqGxA
	gJPDKaXTlFX9nY3vvJXIdrwKSugoICuH9PYjQfTuVMKMPuTW7naryej0IZpnW0ZMUHu3
	k8DdlHMNWfk/lixvWzBmrbctFv/rsQJdBwKD3XYCDa8dXLacVCDjORj1IhUNbi/HGBNc
	dCYzAPgZeV/ycirXz9h/2Xf1jDdaUByiF9P2KRqgkXTl/UhIzhLKgFVt/wpy6sSqEJ3P
	HVxw==
X-Gm-Message-State: AOAM531vEEMUzBI3V6n/HsyCgCbLXwcWoKTlMnQosCSd8Cpaj109zWGX
	p7WQGtZxL9EMczl95blzagUrr0WS9yA=
X-Google-Smtp-Source: ABdhPJzX809L7hBd8s5iq0D8p+I6WGfQi9FtqoUjAX9d60wJNSYmplOJI02wD2ICk0LTnUmlQP9IQw==
X-Received: by 2002:a05:622a:292:: with SMTP id
	z18mr9522732qtw.205.1637355636449; 
	Fri, 19 Nov 2021 13:00:36 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id s22sm495198qko.88.2021.11.19.13.00.35
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 13:00:36 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
Message-ID: <9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
Date: Fri, 19 Nov 2021 16:00:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I never experienced speech being cut off in the middle of any update or install 
here, but I didn't try installing 35 either. I installed 34 without any issues 
at all, then updated to 35 alpha and then to rawhide. All went as expected, and 
I actually find this to be the smoothest running OS I've used, with the possible 
exception of Arch ... after it's installed and all the manual configurations are 
done.

Installing to an external drive does require that the boot loader not be 
installed. There is a checkbox to install the bootloader, and you can untick 
that before installation.

Regarding braille, this may in fact be a problem that I haven't tested yet. I 
can't be certain of what is causing the problem, but if I find it, I'll report 
back here. Fedora did get the latest version of brltty less than 24 hours after 
it was released, but I'm not sure if that fixed any problems or caused new ones. 
I do have a display I can use to test things and try to get things working, and 
I do have a Fedora account, so I should have no trouble reporting any bugs I find.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

