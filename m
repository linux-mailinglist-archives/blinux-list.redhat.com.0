Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 94184151DC4
	for <lists+blinux-list@lfdr.de>; Tue,  4 Feb 2020 17:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580832165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bMG4NRUhnnmgAzvwUcYK2f8Ghrn3H/ohCeGb2owG/90=;
	b=VCPOZAefsEOc6Ay7Eau4/gZNT8g5dyiQKQlB+VKp1YUxOJle926lr2Nlf7D+WaAm9zDCeF
	LCyFxjwgxCkr/7vW1FX+K32oSZ6v+VAiWGimC00p3vyvElrEZu87ZGR6hHMHZJf8HXYBjU
	PP/d1m6+idhn07koMIi1gdbq2aCBNb0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-391-yekcqV6HPK2nwKbcnRYS9w-1; Tue, 04 Feb 2020 11:02:38 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BAE641B18BC3;
	Tue,  4 Feb 2020 16:02:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B54A810002B6;
	Tue,  4 Feb 2020 16:02:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B25FE8173D;
	Tue,  4 Feb 2020 16:02:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 014G2GY3001411 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Feb 2020 11:02:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8C4EADBF0B; Tue,  4 Feb 2020 16:02:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84E9CDBF16
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 16:02:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74C1080300C
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 16:02:12 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-313-uBjjTkOpP7SFivtmv9uVdA-1; Tue, 04 Feb 2020 11:01:52 -0500
Received: by mail-wr1-f45.google.com with SMTP id y11so23738929wrt.6
	for <blinux-list@redhat.com>; Tue, 04 Feb 2020 08:01:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=DepQOc59Hg6H5BgqfD0QC/DkgeOjCtiiIi7wPZekJBk=;
	b=B2+aSHzsucX+Yxag+uaozzxPjRZhvjlvYFNDAY8WkCKB9YZi/PO+NqvW4jn/u8U6y6
	TEy19NC7qqw+8w3dzfBzv8QYB2KcbJ2adJmtbxrhVZtjEtLYLT0NGfzI2qyrMNiRyeyv
	Hp1bdWwc/X5vb5xluoEhHafPygXdPBf9vgfV6gTaI6JUkG+W6GITOAjERPEe0n72j+d3
	vvPkhO8PcJdy7osLH+9dwyjRRZcaQsoWHFVb6WTuW89wIUUR/psOFo9vC02b0XC6pHS8
	pc0I6nVAbCI1CiHp80iAglq4oYL8PJwZNvOVwT6Csv4HLvdZK4Od84g1LFn8I/pvEiTz
	xanA==
X-Gm-Message-State: APjAAAUoaP37P+xQjLM/5AagH4oIMFlt7dLty71p5RO0NnNH/zga9nzE
	oNurUzjUae18u1D5Xzdwh2Yq0zO9
X-Google-Smtp-Source: APXvYqwpHiWVHvaw4tYxm4oLVpTB0ZAmrvbU8wfqST0dUtueJBewUmpuA/ikyfInqGVAEdjqkItVmA==
X-Received: by 2002:a5d:6411:: with SMTP id z17mr24349476wru.57.1580832110761; 
	Tue, 04 Feb 2020 08:01:50 -0800 (PST)
Received: from [141.24.217.136] (avt22.rz.tu-ilmenau.de. [141.24.217.136])
	by smtp.gmail.com with ESMTPSA id
	s139sm4359536wme.35.2020.02.04.08.01.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 04 Feb 2020 08:01:50 -0800 (PST)
To: blinux-list@redhat.com
Subject: Looking for Emacspeak users
Message-ID: <bc9ce353-0b50-f93e-345f-c9d53da80968@gmail.com>
Date: Tue, 4 Feb 2020 17:01:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: uBjjTkOpP7SFivtmv9uVdA-1
X-MC-Unique: yekcqV6HPK2nwKbcnRYS9w-1
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hello


I have Several years curious about emacspeak.

I tried it out in a raspberry pi, but regarding it needs its own TTS 
engine whuich I was not able to configure in those times.


I would like to contact emacspeak users in linux to discuss about what 
can I do in that environment and how versatile it is.


Thanks


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

