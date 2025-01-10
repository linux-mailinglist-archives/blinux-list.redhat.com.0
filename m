Return-Path: <blinux-list+bncBDW4PB6JVENBB24FQ26AMGQE3N3KG2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A0AA09C6C
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 21:28:28 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8f6b89dcdsf37884686d6.3
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 12:28:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736540908; cv=pass;
        d=google.com; s=arc-20240605;
        b=OOO8iieS0FU2o8AybMCwwK4YyeDsvqyylezVw5HD5SYPX5LMUJB+AR0xbZ+ndfV7Ax
         mhhop+BqHLaDz7CayDrhk+p6i5XSrDcOt6JVd1c0T7I2oHayOelD0RRa4S7pQ7/TXrNX
         0F6xvYJFr59UStaOFYDryWv6C1JZhS9McHGThw7e+aokJZzHAHHrHIsE2OmByIoW5dXj
         3r/zIEI3PGLMr2ThUTUWo7hDFJHF+SVeLF12W+PwUgm3hF3UUShfrp8wLrIuFRwvMxMM
         EL6NxdXgzwI4qncIpNaeUrvD2bpVwi5j/mBGQyNby2U5rLcqVxZbmmLXHkk4duCZ6t+Y
         A3mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :references:to:subject:from:mime-version:date:message-id
         :delivered-to;
        bh=DKTP3kxlPbEpVeXDtZHYZq6tfnMGgdO4u723wRPbgX4=;
        fh=QL0Cd6dvFctvtBRvm8nWZCUJSYH2TlSsObSoV8AIlrk=;
        b=UqgIPnh2OtWb+qF6x6ZxhtiWombbOIw6sD7A7N3ua1m+hNYVJkDyWABE5czkHE1HQq
         /tdLT5QQ7agkYkUMErmvLiwI5U1m1al9nL/B+Jes4RpTDvfmjoVajrNAhODh5hCUrbfQ
         Ixmg/lsZg5rX2I674KddvhhFPT9uaeBRUCXYjM45tubuvtc7MivpY4o+ufGTpLU3vEfn
         +sZ8JNNXjw9FM/Qh1uo7rnj2HCMqJtYE+gUCdsp9qqg5r7CDdsFLB6kA2sTRpXe5YkyA
         CP9D9fM/GgOyEEadQ91bHBnx+RjDM4s9mxQJLBXSmBcmOEEEyAhztRNoZBElUR1MLppb
         37RA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) smtp.mailfrom=blinux@clul.router5.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736540908; x=1737145708;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:references:to:subject:from
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DKTP3kxlPbEpVeXDtZHYZq6tfnMGgdO4u723wRPbgX4=;
        b=vLUVkLnV66Wx1ckbsbTuwuXsOguX5yUbQuUCvKji82uz4mWl66AdLmbt8ikF20N4Ht
         RgVMOfBEo3hgJNARr2bp+grW5dwBvetQohKfj3rmpWkb/IenzgDKnzlqoNv5vf17BAsp
         hZ9feZTtPOqQn+d5XRzaIaynqAkQgP61hNV++cgG+0z5toLw4XW4JUAde+8mfFa5tPrf
         9HAkrwVhoPkKyr1f6/BCwpMB2rUiuz6SVuFcdPQIPqR4DiV9NQN3f/LBhYHTdHPgF4WE
         GKVJUGqERljZt266QtHzzWbKuudbCUQj0qcTiFXBbdMfr+ST/Eo+r8WzrrLHpbuQ508q
         6Usg==
X-Forwarded-Encrypted: i=2; AJvYcCXDDMhEjTkV8Ldbf6mlhIzFBb7pumcyJ1z1tsorPHQNn8M58MVi0QkqGFmJ4bpxsf0xQS6eSA==@lfdr.de
X-Gm-Message-State: AOJu0YzD9pb9U2NV5Leea0+rUhR2bRyDd+v42bf7zN9ZkSO0CMyB0xz+
	Qotq0Sk6KydRJsPA32brYKH66q8ov1AETSYCRU6s74RbRQB735wTcAyb6LJ6xX0=
X-Google-Smtp-Source: AGHT+IF/DbTfwPIze+ju8G9V7/nsuQX2oSGMx30u+FtjplWRI5WCK9ckQvse8cnoDJXQajNvFww7VA==
X-Received: by 2002:a05:6214:2341:b0:6df:b53c:7466 with SMTP id 6a1803df08f44-6dfb53c7a8fmr23849926d6.43.1736540907667;
        Fri, 10 Jan 2025 12:28:27 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:9e91:0:b0:6cb:d4f7:64e0 with SMTP id 6a1803df08f44-6dfa37d106dls33523486d6.2.-pod-prod-09-us;
 Fri, 10 Jan 2025 12:28:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWbPAysWI76cu6PQ5yApB5SF9z1FA/7p6v99KBijhdx2vPUzZlfsjpVvZ2bs3pTfP27XqsGlWULdDIEbA==@gapps.redhat.com
X-Received: by 2002:a05:620a:1aa9:b0:7b6:dd9c:fabe with SMTP id af79cd13be357-7bcd97095b4mr1711480585a.19.1736540906818;
        Fri, 10 Jan 2025 12:28:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736540906; cv=none;
        d=google.com; s=arc-20240605;
        b=ikiKt9eiCjGUNHlDgbC3xyautNDU/eUK1xA/Xvm9vlYij7mZN2Wb/i3u8AxdsUNkaq
         pq4oCFYv9w0uWjITWpmGRThOez6euIDgh89ZVD0l0QqtyrueBw/mBxxlD0MmufwFbweJ
         t9XSa6TgHXunvHDDviFsRwtB/OTDPLURJJNPC5Zlf6y41cEOoH8Y4wRIg3p80aZOnaeM
         evUxabfFStAB9HkYDlNyXdGnsv+zd0EQRG6icUwcCqiIx49imcZZnjwfTkO3FE5yjA+p
         b3eTYr3PalAvAZQ/dGlC7mf4S0BZviM97P7UWOfxDXgrVzfOUKp35kl7ok0WYO2y504m
         WTNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:references
         :to:subject:from:mime-version:date:message-id:delivered-to;
        bh=mIb0EbKpbyUTDQP6lTStNZPkAQyegFNMfJ9JOnkJp+I=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=MrnKyE8bKQ1g5HGEb1iICv6omTF0zhIbwwzKVUHHEP2MeFHtGeDT9B85OPvkXc1v4e
         Ww4upceYJXRknqWQKnKaZEaBOyRJpO2H+fsgWeUNPukKEVoMTVXHUXg6JaiTfMgi9TO3
         5ZwwCxgYlGA8DprCQoLzZxgyG7Zkyl+KamheF2guQeds8XwFDLKr7BTVnwRoT2ZtHSXe
         AcilgftMtY6gPZqruXLH4eU+xJ127lcP+Q0bh6jXgfmH4XEG/PH3wCnEFFPSqI/SgHjy
         QY8pjmtxhTOXEBwivXx3rEzksB3/IdRSJE6phh7b6GNXYEexCR0bgYho5lK7hJviX1ST
         1sQA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) smtp.mailfrom=blinux@clul.router5.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7bce322bf61si476647985a.42.2025.01.10.12.28.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 12:28:26 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux@clul.router5.com designates 173.166.91.13 as permitted sender) client-ip=173.166.91.13;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-61-YIgz2BpgPWC5ZEtMZoKMuA-1; Fri,
 10 Jan 2025 15:28:23 -0500
X-MC-Unique: YIgz2BpgPWC5ZEtMZoKMuA-1
X-Mimecast-MFC-AGG-ID: YIgz2BpgPWC5ZEtMZoKMuA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F31B71955DD8
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 20:28:20 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id ED2E419560B0; Fri, 10 Jan 2025 20:28:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EAE7A19560AB
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 20:28:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6ED5D1956050
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 20:28:20 +0000 (UTC)
Received: from out.packetderm.com (out.packetderm.com [173.166.91.13]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-74-CNs_cgQqOTe4Imv16j9-uw-1; Fri, 10 Jan 2025 15:28:17 -0500
X-MC-Unique: CNs_cgQqOTe4Imv16j9-uw-1
X-Mimecast-MFC-AGG-ID: CNs_cgQqOTe4Imv16j9-uw
Received: from localhost (out.packetderm.com[173.166.91.13])
        by smtp (5.7.4/5.7.4) with ESMTPSA id 50AKSFuC058631
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <blinux-list@redhat.com>; Fri, 10 Jan 2025 15:28:16 -0500 (EST)
        (envelope-from blinux@clul.router5.com)
Message-ID: <MTAwMDAzMS5jbHVs.1736540896@quikprotect>
Date: Fri, 10 Jan 2025 17:28:10 -0300
MIME-Version: 1.0
From: "'Cleverson Casarin Uliana' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: List problems and a suggestion
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
 <ee5bf675-a2e6-eb1d-7a04-1e19bdc896e5@QuiteLikely.com>
In-Reply-To: <ee5bf675-a2e6-eb1d-7a04-1e19bdc896e5@QuiteLikely.com>
X-Mimecast-MFC-PROC-ID: HPwyHUyIJ5B73nBQtbY9LVTlU6tbGdqqc-OoKmbOs-Q_1736540897
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jBoHd8OIaZFts0OWmHlZ-UWf7cJFFXGR6W0btPKY51g_1736540901
X-Mimecast-Originator: clul.router5.com
Content-Language: pt-BR
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: blinux@clul.router5.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux@clul.router5.com designates 173.166.91.13 as permitted
 sender) smtp.mailfrom=blinux@clul.router5.com
X-Original-From: Cleverson Casarin Uliana <blinux@clul.router5.com>
Reply-To: Cleverson Casarin Uliana <blinux@clul.router5.com>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hello Geoff, I just sent a message to 
blinux-list+unsubscribe@redhat.com, that's the address listed at each 
message's footer. It sent me back a message to complete the process, 
containing a link to leave the group. the link points to:
https://groups.google.com/a/redhat.com/group/blinux-list/subscribe
But when I enter the page, it displays an erro suggesting I change my 
logged account at Google. the error page address is:
https://groups.google.com/access-error?continue=https://groups.google.com/a/redhat.com/g/blinux-list

I've never even used Google Groups to deal with this group. I don't 
recall what happens when I send e-mails to the owner or the help address 
as you suggested, but I'm almost sure it gives me errors too. In any 
case, I'll try them again later.

Greetings,
Cleverson

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

