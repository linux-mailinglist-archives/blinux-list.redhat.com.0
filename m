Return-Path: <blinux-list+bncBCVPTHE7K4IKZNWZWUDBUBBIPEM34@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C6D94D601
	for <lists+blinux-list@lfdr.de>; Fri,  9 Aug 2024 20:08:47 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44f594e5605sf28031081cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 09 Aug 2024 11:08:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723226925; cv=pass;
        d=google.com; s=arc-20160816;
        b=inU/c1UeYqiaKFM5n0JWwa5V6oqN3PQd6EFw6Zt3HCaCRdqwgB4NJm8FKrMzD3vcs9
         hxRKy5oAWlWDxf8bn591Et0lcNmP/bxF+n8ZVv7zHqE0Aqr/FxI4LAuqI1yx4uY88lCB
         Nl6yyL3PGqNBYVov42w0PEFwX27l63CDESN9A5F+TkRT14tdePyRqiaF+BthQe+WJR9k
         7hQBg6NybRgdVWWQAURYAwNZS/2XHrrLb2eMz20WGhKDUiHxIV1LInrcgdFhb638w1ZK
         c5WiuXWVYXrIU/QhhDBL39bL9S1dGWSn87l3QLJ9J8tkiGUYz3xV4Xlb/VGpL5mGug7+
         wxDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=4hl3slf1hUc0hRg4j1BsZtz/EAicsD/Xw0M73o/R5o0=;
        fh=pmsaZzcg5Dxur6uLRiLrFWBzWc3ZHCYFffLhX23t9o4=;
        b=Mhnv8AvK509xCva/7gA6VTh6xgxM7KifsSquuVnP5oPj+98VhNfR73TYoPT4MUzd4W
         mDuIn9yK3vl6wFAcf1J1qM/o37+1FO4cl7hYvchb0eUiHHYbbsbbY5KOhQoeBEPUfUUz
         SkkAOqb7Zd7czcEB4HrGormWLWo/NpKyf2fWsuNbk6NbTlUEMmVnUl8vaEdUbJprjOlV
         W1sNkqUlcU6vjbsGwwtEq+rCCmXe3u4vIaa7e4vXLGXTn3OzjDh054MCHiKYi3iKbQCr
         QFrQv6L3K1Sh1MJ/030wusQjGQcdt+Nza70oJ1tN1ZN3JWBlfx+NL1nZur1N++xk5j95
         1EqA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723226925; x=1723831725;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4hl3slf1hUc0hRg4j1BsZtz/EAicsD/Xw0M73o/R5o0=;
        b=oDkTjmBDnJqHm4NscGFPpzSkTVcx52BD/2Ge55ox3avYpzq9OJ5zdUrmjWcjDl16km
         FLBxdAPvWhoRg/tjyniu9MOndBRZRvD8q5bpntHJdEZ8k68+Pg7tQjD2nIQ9B2d6q1yQ
         K0lotdbMru6LpGGWObJ0MwH1i+VmushpHjFfnCSRBcMEdq2tsxb5YifsFxvm6fnPJkBr
         0pBumPtl5+8CX6kNfCHOOM100WG3DkMrL0zWbCAGdSJ+uRe69xqcjxyBj7EHMufcONcr
         vBZqFq3zh2eNjMLtynVKzNyNpG5UKvS8dcnvrTFOqHSB5YTacBuVXeaHVZQe+6lqzcZa
         k2WA==
X-Forwarded-Encrypted: i=2; AJvYcCX/YZx4nMyt6c3nBLS093A+4C216XM0eV4fwJIh1jNCNZBKPR71fk0Fu3Qys4MwVuOiNtOrnIzPBMkupTQzBfA1K1UYqyKlx3R+
X-Gm-Message-State: AOJu0YyWZLosGtcZhmLrGRxH7qBOMZ8W/PZIIamnf8lJ0Q854UFwkGc0
	snlTze5b2DZw3PRkxK8Ki472ReQQutmXqmJclhEiTj+O9V4tE8OW7ykF9DLiQe4=
X-Google-Smtp-Source: AGHT+IEsYPYyKmotRTaiJ62ojNZz72ywaVL9Y35t91qbVt+jsVPDfrT0pzXVqp5MWtxOxMJ6QwwxlQ==
X-Received: by 2002:ac8:6f1b:0:b0:447:e375:1ca6 with SMTP id d75a77b69052e-453126c846cmr31348721cf.52.1723226924567;
        Fri, 09 Aug 2024 11:08:44 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2c5:b0:449:2608:3035 with SMTP id
 d75a77b69052e-451d12d1a2dls29666881cf.1.-pod-prod-01-us; Fri, 09 Aug 2024
 11:08:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX7Z1Vy5cpu0+pOrTGtiDTdzC7qjKgF3XrZGieCPg/f8otF+9VS/9eec6mm+Q54qxUpcysYuRKiCKGnS60tfBntgmtTOxoHUPeldHaD
X-Received: by 2002:a05:622a:588d:b0:451:d859:2038 with SMTP id d75a77b69052e-453126d5888mr23618771cf.57.1723226923635;
        Fri, 09 Aug 2024 11:08:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723226923; cv=none;
        d=google.com; s=arc-20160816;
        b=DqQ58LDHsJmI1nggfgDwTpy23ssrjDoskb0ImYndp8Q6Pjuk1yeKOZVWgKGzQBa/Su
         0K25MSHsBoDeYqqK0xsw5zVYaq9OQYNaZKSS1pP44oJbVDY1dxNnc2QoVr22cTXbDOB3
         3SoCovnXKgtJmofOx9TJYv+cUBKDsPKOdvduJoN2dTdDgRpxYQKDL+2dNyGVemygpLP0
         IT/oRT/Nal2YDwxGJOutkoXsps1EI54Di2zLPxinpyhOks1bh+On2S1b0AfBGc3UTmFv
         BBGPStOWjG5gx55TwIdi7LwTqMF7vmg9xIw8iGVPYmyor+E/CrVap92lOwKKzvMZiWDH
         8sRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=4hl3slf1hUc0hRg4j1BsZtz/EAicsD/Xw0M73o/R5o0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=f7Pzw0qmkmSmbJayKo9B+NJdrf6XwwRKd6E9kpoSKJWstFjTKEGMWP+1iHXCQjUpQ5
         17nf+mKEc3BT25A6vOznCXY3YiWTigvCeGknJ6634e6CvglERRRzKYYztcQfMmQAj/1c
         AsC8qkFyoJx/yaUmWAYNb6htGVxR9U8KDT7EtSG5S897WoWzFbxoaOHd0oURNNkvkhnE
         +EPfukFVkL4k/EJlIxFEm3zVZ+K9LAzID5wbdrx2aBI1BeA/AyqPcwrUeWhSBPQ5nQkl
         rEtIR8mXjLobMFx/FhCAL4xGzEAUvkPcuIQbeIuTIXhyKF6QeXr1sqvdXf2jI6tGCnKL
         UISQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c2cb517si228381cf.755.2024.08.09.11.08.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 11:08:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-298-TXj-TWixNzqjzVzTM2EHkg-1; Fri,
 09 Aug 2024 14:08:41 -0400
X-MC-Unique: TXj-TWixNzqjzVzTM2EHkg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3C29E1944B2D
	for <blinux-list@gapps.redhat.com>; Fri,  9 Aug 2024 18:08:39 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1A3E21955D58; Fri,  9 Aug 2024 18:08:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 17E101956089
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 18:08:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A5C0C195609D
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 18:08:38 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-418-VoRUTVAsOSWEbFPQBIw9xA-1; Fri,
 09 Aug 2024 14:08:35 -0400
X-MC-Unique: VoRUTVAsOSWEbFPQBIw9xA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id EE0B340508
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 14:08:34 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A30041000A7; Fri,  9 Aug 2024 14:08:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A285510008A
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 14:08:34 -0400 (EDT)
Date: Fri, 9 Aug 2024 14:08:34 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: taking a screenshot using either Links or e-links?
Message-ID: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi all,
Will outline the situation.
Amazon Canada has rigged  the site where one cannot refuse amazon prime 
from the keyboard.
The link alt-tagged continue without amazon prime benefits  ends with 
display.html
The button alt tagged join prime is an actual submit button that works 
from the keyboard.
Amazon Canada accessibility has asked me to send a screenshot.
I recall, that links the chain has such a method.  If I am right can 
someone outline the steps again?
or, can one create a screenshot file in elinks?
I have access to my account in both browsers, although the links is a DOS 
port of the build with JavaScript.
Thanks much,
karen


