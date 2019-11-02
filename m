Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id C4F4CECECE
	for <lists+blinux-list@lfdr.de>; Sat,  2 Nov 2019 14:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1572700722;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bWkHPH3vF/FS5D5S107oBmcCWrErzH0YyOWvcKVThWQ=;
	b=IsukX2RvFrIuoOQ0snqBCZkeEXjZBQCzwaHor03a8US74XE5jq5vsnW3tHpNPOSaEHp95L
	z4/0FmpJMKUk1JZxXDdvzzaAId8VCSN6IQmilSHCZYQC1yMPmk6XD2P0EZkEmvdxpP4DVL
	4i75mstB//3L55Nvq9b2uY+AibZZTnY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-vl8jU78VN7uNV0lJkL5ACw-1; Sat, 02 Nov 2019 09:18:40 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 072BD66F;
	Sat,  2 Nov 2019 13:18:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AD1060878;
	Sat,  2 Nov 2019 13:18:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 117F34BB78;
	Sat,  2 Nov 2019 13:18:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA2DI1Gw023469 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 2 Nov 2019 09:18:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 125F55C3FD; Sat,  2 Nov 2019 13:18:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx17.extmail.prod.ext.phx2.redhat.com
	[10.5.110.46])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AEA15C1D4
	for <blinux-list@redhat.com>; Sat,  2 Nov 2019 13:17:58 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6A0823082D67
	for <blinux-list@redhat.com>; Sat,  2 Nov 2019 13:17:57 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id q70so12097143wme.1
	for <blinux-list@redhat.com>; Sat, 02 Nov 2019 06:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=8mcIzMP6TY4KrvTpT+XTLe4BXSoM+u/8b44H8IEVkx8=;
	b=YK1gvykLQ8kA3UoyWV+WIbFp6RxNXOkIZwSqhsSV1iUkYmHlPHu9r4tEQRQDZxNvGa
	lH3Qt2vZV4tO5vJkpmw/mgiotO4rHqI7P4OzJZZzcIKaKtk+G8I2wf9wf7YT6iuP/ZBy
	lVSs0dJ09wOKnd6nAVUoFhaGea5usiMNaLgnUipgmXcZtfZnC0kfCqLonh7jMV2CwTp8
	/Fne5sWc02UtiaCM4k1f9iNg46LzHcgv9mUjxDDHJSgTRSYPyPgDSKCwgiZW2AQM7VzW
	9upnKabFb1NxfIkXHWhs62KJOq8/aVfGD1/O7fqIaneQQaRO18z77wYRne0tYtRfAOfg
	jyBQ==
X-Gm-Message-State: APjAAAVP6DoRJcZ0OuGv/HHU4CHdoOH/yA0iJtZws/UcmHCCF/cGqaVN
	R7Qm1knKQinUlRYqth/fltSuavad
X-Google-Smtp-Source: APXvYqx+968HPYg5Wx59s3n5h/OyFkx6IpmLPJBcweCnd1oL54zHUFcEKwcY8lvKmEeHawidtjSjfw==
X-Received: by 2002:a1c:4089:: with SMTP id n131mr15609508wma.86.1572700675861;
	Sat, 02 Nov 2019 06:17:55 -0700 (PDT)
Received: from [192.168.1.221] (host-89-240-50-39.as13285.net. [89.240.50.39])
	by smtp.gmail.com with ESMTPSA id
	76sm19373986wma.0.2019.11.02.06.17.54 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 02 Nov 2019 06:17:54 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Ubuntu, UEFI and hard disks
Message-ID: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
Date: Sat, 2 Nov 2019 13:17:54 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.46]);
	Sat, 02 Nov 2019 13:17:57 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]);
	Sat, 02 Nov 2019 13:17:57 +0000 (UTC) for IP:'209.85.128.42'
	DOMAIN:'mail-wm1-f42.google.com' HELO:'mail-wm1-f42.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.15  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.42 mail-wm1-f42.google.com 209.85.128.42
	mail-wm1-f42.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.46
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: vl8jU78VN7uNV0lJkL5ACw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I posted this over at askubuntu but I figured I'd ask here too. Got my 
laptop to boot into Ubuntu Mate. Problem is...it won't detect the hard 
drive at all. I can do slblk and all it shows is dev/sda (which is the 
USB stick). Installer picks up the stick too and tell me I need 8GB of 
space on the 8GB memory stick.

I went into Win10's settings and turned off UEFI, then secure boot. So. 
Should I reenable the UEFI firmware but leave secure boot off, or...?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

