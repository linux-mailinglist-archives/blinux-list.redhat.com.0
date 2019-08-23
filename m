Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2809B78B
	for <lists+blinux-list@lfdr.de>; Fri, 23 Aug 2019 22:04:49 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9A11B1196E62;
	Fri, 23 Aug 2019 20:04:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E59551001B08;
	Fri, 23 Aug 2019 20:04:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99C56C592;
	Fri, 23 Aug 2019 20:04:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7NK4Qmi014289 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 16:04:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EA22484F3; Fri, 23 Aug 2019 20:04:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E547460C44
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:04:24 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D9A723023087
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:04:23 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id g17so9687530wrr.5
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 13:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=U/2kK3gjn0a7q+Ku/k4gam27WgRGnNn9gKd742w40l8=;
	b=Um1ghE7YIcw5wozO0i8bjNODvJX7lTnrRR9E2xwXN978sZ2oK56hl/YnfY2L1iHCP6
	EH7q+GepK407IwG9Y1iGnC5/HZqyUUAHGhpRR4bcEqrM/24Yl7oJHpV094dd8WRkNAfq
	OfHH1f7FJJYrMJfygz+6IkQwiMl+ffrnlMWJNwyFe8ii2bh/E2diL/QD+qwY9igbWanM
	9Yr6FOeYGEiuXDqDDzybF+vUwwL9JAPDdxXh5TyVIuP1QfGVkpJRasYFhhQhL/jy+UtH
	SiNLmk/BGhO8EQT9mVQLaHpzgRzBfZ81nrnEnttfYEJf1FuWcH9b6Xqot3fxW38NybTx
	t7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=U/2kK3gjn0a7q+Ku/k4gam27WgRGnNn9gKd742w40l8=;
	b=BqFkJAnT278U6qpAjqvJj1pfJKIKgZ8OcZ9/3kx0fgGVkY/Xo7shNHkUS1oEeVfn94
	5LLemNAlK/UIwE+Zbd1fY8F6W8iGlIWpZm9HLh3uiSmjGc8KhqC9Pj+J3IvJKzfiRNhm
	C/touffPdsz0Gk5sT4cu+IS00f09AZL9vuGkrIWHxY0kZygMt0NOuXcGMENEr84MGmwO
	6WD3+UZWTOEz8FMbe/8mnIQx8BOyOa6hhDCeHJ+lA+QpJKN9uk3PSYoQzukG2OupiQKN
	1CEt0XPEk8N3tFfTVyWMYcj2OcTwUvpGNSbj9a/vO6jFCty6Q873cH5U7MWrtgzYmGx3
	dbyA==
X-Gm-Message-State: APjAAAW/lCmst9S/sG8TAPmkClU+fKBHaFzRrwj9yX3snj+416R8TXBF
	pQf1b+zXgB13Y6A8qT8zxdm/NgxT
X-Google-Smtp-Source: APXvYqw6ZsMxDxJ9fsIF7pNcQn+NSCgsRt7hVl3yB+QRgWAHjSXoeRVQLJlxRf5SY2ajzdkFSW/PQw==
X-Received: by 2002:a5d:4e90:: with SMTP id e16mr7145776wru.339.1566590662339; 
	Fri, 23 Aug 2019 13:04:22 -0700 (PDT)
Received: from [192.168.1.110] ([195.147.80.70])
	by smtp.gmail.com with ESMTPSA id
	g15sm4469177wrp.29.2019.08.23.13.04.21 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 13:04:21 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
To: blinux-list@redhat.com
Subject: Slint and VM
Message-ID: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
Date: Fri, 23 Aug 2019 21:04:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.45]);
	Fri, 23 Aug 2019 20:04:24 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Fri, 23 Aug 2019 20:04:24 +0000 (UTC) for IP:'209.85.221.44'
	DOMAIN:'mail-wr1-f44.google.com' HELO:'mail-wr1-f44.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.15  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.221.44 mail-wr1-f44.google.com 209.85.221.44
	mail-wr1-f44.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.65]); Fri, 23 Aug 2019 20:04:48 +0000 (UTC)

Okay, I'm trying to set Slint up in Virtualbox but....using the latest 
ISO, nothing happens. What settings do I need to config for the VM to 
work successfully?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
