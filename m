Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A8E60F3E
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jul 2019 08:23:37 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id AAA133086246;
	Sat,  6 Jul 2019 06:23:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5E3380C9;
	Sat,  6 Jul 2019 06:23:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8411718184A4;
	Sat,  6 Jul 2019 06:23:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x666NM3b024599 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Jul 2019 02:23:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 909BD18A49; Sat,  6 Jul 2019 06:23:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89FBCBA45
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 06:23:20 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4137B83F3B
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 06:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id B5DD15EDC
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 08:23:16 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzrW3AsW2yWv for <blinux-list@redhat.com>;
	Sat,  6 Jul 2019 08:23:16 +0200 (CEST)
Received: from function (105.251.129.77.rev.sfr.net [77.129.251.105])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 24B155ED9
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 08:23:16 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1hje6N-00085m-CT
	for blinux-list@redhat.com; Sat, 06 Jul 2019 08:23:15 +0200
Date: Sat, 6 Jul 2019 08:23:15 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: debian missing speech
Message-ID: <20190706062315.d6blqwm5bvpzlx33@function>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CADj8Jxe3riDFGg4OL1L2h6d0YDyjW-htUNiq14Xe5zQtp74E7w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADj8Jxe3riDFGg4OL1L2h6d0YDyjW-htUNiq14Xe5zQtp74E7w@mail.gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.27]); Sat, 06 Jul 2019 06:23:19 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Sat, 06 Jul 2019 06:23:19 +0000 (UTC) for IP:'185.233.100.1'
	DOMAIN:'hera.aquilenet.fr' HELO:'hera.aquilenet.fr'
	FROM:'samuel.thibault@ens-lyon.org' RCPT:''
X-RedHat-Spam-Score: 0.651  (RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	SPF_NEUTRAL) 185.233.100.1 hera.aquilenet.fr
	185.233.100.1 hera.aquilenet.fr <samuel.thibault@ens-lyon.org>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Sat, 06 Jul 2019 06:23:36 +0000 (UTC)

Hello,

Linux for blind general discussion, le ven. 05 juil. 2019 22:05:31 -0400, a ecrit:
> So I have two of the debian netinstall iso on my pc when I was
> installing in virtual box it could not find the speech when tiping S
> to start the speech install.

Could you try this version?
http://cdimage.debian.org/cdimage/buster_di_alpha4/amd64/iso-cd/

It seems that some hardware have issues with the latest kernel.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
