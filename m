Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id B37FA2227B3
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jul 2020 17:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594914288;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+KE3CJwzXINWiVtjUQ01ZXcGeuWkFvt0McPul5GX49Q=;
	b=W4MO5Ov4Q0ZTvYhnOBBmsvLCGwUCNpPWI7faUmvhhSuE/rQtiU0hbb6ha4BBJ+sLAOZ3do
	KOnoUbNimQ23tERsdM3LG2bia/S1qC+AUWa19CWS5ycVlkJcn3E2zLi863z6CaCueYBSsO
	xeCD75BVfM80iJlumTnpk3HDp+eXYng=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-GtYo_s0LP4SV0KiSuff6VA-1; Thu, 16 Jul 2020 11:44:45 -0400
X-MC-Unique: GtYo_s0LP4SV0KiSuff6VA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2BCC58005B0;
	Thu, 16 Jul 2020 15:44:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18E8672AC7;
	Thu, 16 Jul 2020 15:44:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02D759623C;
	Thu, 16 Jul 2020 15:44:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06GFiRnS006170 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Jul 2020 11:44:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3DD102166BA3; Thu, 16 Jul 2020 15:44:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 396352166BA2
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 15:44:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F3586924907
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 15:44:23 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-414-A5IfN2YUPEKzG7CZpb4s5Q-1; Thu, 16 Jul 2020 11:44:21 -0400
X-MC-Unique: A5IfN2YUPEKzG7CZpb4s5Q-1
Received: by mail-wm1-f50.google.com with SMTP id o8so10719195wmh.4
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 08:44:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=u4a1owI6Pga7gy2yXzo21oXZzVNdQzDHnptTYddUtI8=;
	b=HbNHJ9v6h2CTbeEYAkuY7UgcmlU6Y10kKxYoUV8kyPC+y9JscNB3+wNQtw3SvGBAF5
	rIbfWTVfZIS/14HOQ7Gcn+ODDm9uCNQ78lHPcmnBSU8a5YdWBSs04RaX3z/Ai3tqlfjO
	3Tkl+UnN6l8fHFHPCJn1ziU9E2a6OpCeKJiGYzwsXiDVJ5IxKHgRAbPP0OddgPpwFvqj
	cs54QqWIQFR8lldWvAym//78p2IuHbKo9RsJlogbOdc/9xi9WIxvldJixBsMeDEFsd/c
	6NPQgMXJcKrY2P0/KeS549GkwQDXt/5das+43nEa90kdUG/3wHAkzUGkk43iqYa7L2Y9
	pdGg==
X-Gm-Message-State: AOAM531jHPlWMKovREwE4ZSftI0tqwqXz14+kgenHfUYWdZ62lg2Kvhq
	8ACcNN94YoT9FatebyEUCd6xVr9agyEzEQ==
X-Google-Smtp-Source: ABdhPJy4f4yaNfSiU2n8iq7SxCRiHaQIXZKfHFv6fScRuDLcjaIY9Bdc8Mo/eFWXIc7WXi4fwWz5JQ==
X-Received: by 2002:a7b:c090:: with SMTP id r16mr4558092wmh.143.1594914259585; 
	Thu, 16 Jul 2020 08:44:19 -0700 (PDT)
Received: from [192.168.1.101] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id
	w13sm9662586wrr.67.2020.07.16.08.44.18 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 16 Jul 2020 08:44:18 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Raspbery which os
Message-ID: <fd69e654-2c7f-c4fe-90fb-6f3b4798ff6b@gmail.com>
Date: Thu, 16 Jul 2020 17:44:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: cs
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I will buy Raspbery pi 4 B with 4 Gb ram. Which os is the best for blind 
user to get a good computer? Raspbian, or is it possible to install Arch 
with Mate? It has ARM processor, so maybe Ubuntu will work or not?

Thanks,

Pavel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

