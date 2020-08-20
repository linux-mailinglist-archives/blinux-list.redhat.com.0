Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 9987324C635
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 21:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597950901;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v1lI3Zf+0JpQqot5zhDDA/YyrB3TZBoka7j7ccF73dY=;
	b=GHHy899Y3bK1SlJQIlH74SfGGZIPy7nKtoqEovQTsAzugqW/5Q8yVHRGozYNhXdJxV3k8O
	DH6SDGVsUiyObhqds+rhQ9wrRm+5SUwpsz4QSa62lbJ4RwXObwA73IHOo1+PPYqHUeIil/
	e7PvSmG2kUfeO1I90yeOsrmxCeAysEg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-270363a3PweYTuRFzZx6mQ-1; Thu, 20 Aug 2020 15:14:59 -0400
X-MC-Unique: 270363a3PweYTuRFzZx6mQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7ACDC8030BE;
	Thu, 20 Aug 2020 19:14:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBD677C0B3;
	Thu, 20 Aug 2020 19:14:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0706B662BC;
	Thu, 20 Aug 2020 19:14:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KJDlQ3007340 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 15:13:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F729F1C99; Thu, 20 Aug 2020 19:13:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B315F41C8
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 19:13:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 150E2101A56E
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 19:13:45 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-93-9OTvAOT0N7-IuROP7RHtnw-1; Thu, 20 Aug 2020 15:13:42 -0400
X-MC-Unique: 9OTvAOT0N7-IuROP7RHtnw-1
Received: by mail-wr1-f52.google.com with SMTP id p20so3232217wrf.0
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 12:13:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=B1Sx/P2K2lvRf80tHPBAwzN13Kuu68HTXJfBtQ/T4+4=;
	b=H+4J8vR1yVXqGaHBWiWaiwQtG5gylFdDBcevKiKTOw1TfJLE2kf3G3O0agW/Y5QKI9
	eXCbW/KeS41d7V48Ne1st6Y0O6ABIzhD/e7X9rUrJpxpqOOwg+Tw2QJGu1oDTOc/R8F6
	6bVYT/bpztvl/vTuT0ZgH8PqBc+xWLEysthL++GFPAQsXNXp2kWGTySTEMXgpSGIIVYo
	9blpmvnpA6D4P5asdrWxqcWKDpADPzh+PedZwGbIYBjc9+PY+60kNHU+Duf1BCcORZXs
	sEZYCVd1Vttf8uVlluUFQJuWekqUyelKB3hxr5A91rTA9/uh7cK0BQyc4wU8JEF82kZR
	LMCw==
X-Gm-Message-State: AOAM531gYZoOGu7pZdcbXBfLNGzGRPR54ayoFAdAIhL7K1wz6LZwKl5Q
	n+91IA5e/pbAKfddzkyFjWiRn3GoM/uAZA==
X-Google-Smtp-Source: ABdhPJz4j5xOQ6q6Njw6aWUAvRxddtU71zalIOWG60M+5ZogO3GGSxiEFCOM7cNoa56J3jMoR+6ahw==
X-Received: by 2002:adf:8bd3:: with SMTP id w19mr145329wra.167.1597950821276; 
	Thu, 20 Aug 2020 12:13:41 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	f125sm1616105wmf.48.2020.08.20.12.13.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Aug 2020 12:13:40 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
Message-ID: <d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
Date: Thu, 20 Aug 2020 15:13:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Ouch!

Adriane? man I tried that some time back. It's a bit too oversimplified. The OP is running Windows now, not DOS. Yes, a menu can be a good thing, but it's an unnecessarily involved task to get to a desktop environment, since the OP already knows how to use a graphical desktop. Also, if I remember correctly, the desktop environment that does come up from Adriane is either LXDE or XFCE, neither of which are fully accessible to Orca. MATE and GNOME are the best desktop environments for use with Orca, and MATE is probably the best of these now. I think the best solution is one that starts right off with one of these environments, and either starts Orca right away or allows the alt+super+s shortcut to be used to start it. This is one reason why many people do recommend Ubuntu. It does start with GNOME these days instead of that Unity thing they used to have, and Orca can be started very easily by means of the above shortcut key.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

