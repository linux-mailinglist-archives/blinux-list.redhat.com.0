Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D764CCA98
	for <lists+blinux-list@lfdr.de>; Sat,  5 Oct 2019 16:42:16 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D65E119D335;
	Sat,  5 Oct 2019 14:42:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5C541001B20;
	Sat,  5 Oct 2019 14:42:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8453618089C8;
	Sat,  5 Oct 2019 14:42:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x95EgCmg024143 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 5 Oct 2019 10:42:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 70B46601B7; Sat,  5 Oct 2019 14:42:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx27.extmail.prod.ext.phx2.redhat.com
	[10.5.110.68])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B147600D1
	for <Blinux-list@redhat.com>; Sat,  5 Oct 2019 14:42:07 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9D166A26664
	for <Blinux-list@redhat.com>; Sat,  5 Oct 2019 14:42:06 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id i16so8422393wmd.3
	for <Blinux-list@redhat.com>; Sat, 05 Oct 2019 07:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=om+WbKzVU9nhzuEWnF43WizoH1aHQ0u9N73UeC/SEfk=;
	b=GdhNxbx+nbILIHFeRyLC+nAw+tAwNGH+D464YtBZEaZbiR0xFE3GCb+3urP5AqTWXp
	eQJTOA8uzkrtmIFJm4CU4AR4ozzHGbUuuzDsGw5RIEXfdNYvG1B9PjHTPvSVT3fMsPkB
	4pChR+p/ZvdTH6uwH5gMx6WHN6/nzfVbouTpU3t065Y2dKwsbbNXcr4EFC7f99WydfIS
	Jw1IokcGoUQHDnQk4HLF27K3gXPBGGWSgnB2dtcFfDmFWXelf/pRsqekMoSl4vhyI6j6
	e0V4BJbtOjw6vsZb26bMd6KiAUnvtFNRuxXVO7d9DFwaZHkGs+2LvFhXCyQqS0mpJ6eq
	FWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=om+WbKzVU9nhzuEWnF43WizoH1aHQ0u9N73UeC/SEfk=;
	b=lQfjwIVgCvpMpcNuoclDdEgMji13svYUs4rwm01SBLqvsSBGwe+WWsjIP/GmEw/PVW
	SKO/bpvK6HrLU0dea3VqGoUL+nHrj/FICwihd89cE1dVHr6X1+hUXK0c4KY8wrF38F0D
	UwuFogncvzhqjR3zbis0fzvtIUbnBu44GQnDBibMQeh7VFWeyt3KUwlNtBMz7qUdzW6d
	eAeCUD2CC1l5Hjh9ySRz9SLbC20sLTy1i1atnbGOSvRail1ayNMVgZRI0faCMRclwAJe
	J9MDBukbFvhOLFaRJSFG+E8SzMKFL+AUyrp+E/1A9APuOb2eOBrgisn22m71C0KWZ59S
	HLxg==
X-Gm-Message-State: APjAAAVevTeX6wK7XsxGphQT0rXNC9FeqidRj7hVMBYAsYT5rsLhTcuR
	RRY4XzM8TS7B846NJRTNIy4Aqh2SGjE=
X-Google-Smtp-Source: APXvYqxViXsna9o+br9TYN6sgoDSMYZUNvxzeJHJpsUNkbyPi2ovHVRnMgZdlBmAfRzBZceK6SIrvw==
X-Received: by 2002:a1c:a796:: with SMTP id q144mr14469382wme.15.1570286525023;
	Sat, 05 Oct 2019 07:42:05 -0700 (PDT)
Received: from [192.168.1.104] (ip-37-188-224-25.eurotel.cz. [37.188.224.25])
	by smtp.gmail.com with ESMTPSA id
	k24sm17952906wmi.1.2019.10.05.07.42.03 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 05 Oct 2019 07:42:04 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Budgie desktop experiences
Message-ID: <112f2f1b-ad3a-6aa1-4fb2-0b52f9e57f90@gmail.com>
Date: Sat, 5 Oct 2019 16:42:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
Content-Language: cs
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.68]);
	Sat, 05 Oct 2019 14:42:06 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]);
	Sat, 05 Oct 2019 14:42:06 +0000 (UTC) for IP:'209.85.128.45'
	DOMAIN:'mail-wm1-f45.google.com' HELO:'mail-wm1-f45.google.com'
	FROM:'vlcekpavel93@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.15  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.45 mail-wm1-f45.google.com 209.85.128.45
	mail-wm1-f45.google.com <vlcekpavel93@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.68
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Sat, 05 Oct 2019 14:42:15 +0000 (UTC)

Hi,

I want to play with Budgie desktop some time. When I tested it 2 years 
ago, it was more accessible than Gnome. Do you have some experiences 
with the latest ver? I want to try Solus 4.0 operating system, or Ubuntu 
Budgie.

Thanks,
Pavel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
